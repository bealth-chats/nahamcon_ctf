#!/usr/bin/env python3
import socket
import re
import math
import hashlib
import sys

# PHANTOM Challenge Solver
# This script interacts with the server, retrieves parameters and outputs,
# solves the discrete log problem (finding d where Q = d*G),
# recovers the internal state of the Dual_EC_DRBG like PRNG,
# predicts the encryption key, and decrypts the flag.

HOST = '143.198.242.59'
PORT = 51341

class Curve:
    def __init__(self, p, a, b, n, G_x, G_y):
        self.p = p
        self.a = a
        self.b = b
        self.n = n
        self.G = (G_x, G_y)

    def is_on_curve(self, point):
        if point is None:
            return True
        x, y = point
        return (y * y - (x * x * x + self.a * x + self.b)) % self.p == 0

    def add(self, p1, p2):
        if p1 is None:
            return p2
        if p2 is None:
            return p1

        x1, y1 = p1
        x2, y2 = p2

        if x1 == x2 and y1 != y2:
            return None

        if x1 == x2:
            if y1 == 0:
                return None
            m = (3 * x1 * x1 + self.a) * pow(2 * y1, self.p - 2, self.p)
        else:
            m = (y2 - y1) * pow(x2 - x1, self.p - 2, self.p)

        m = m % self.p
        x3 = (m * m - x1 - x2) % self.p
        y3 = (m * (x1 - x3) - y1) % self.p

        return (x3, y3)

    def mul(self, k, p):
        r = None
        current = p
        while k > 0:
            if k % 2 == 1:
                r = self.add(r, current)
            current = self.add(current, current)
            k //= 2
        return r

def bsgs(curve, target_point, generator_point, limit):
    print(f"[*] Solving discrete log for Q = d*G using BSGS (limit={limit})...")
    m = int(math.ceil(math.sqrt(limit)))
    print(f"[*] BSGS m={m}")

    baby_steps = {}
    current = None # Infinity

    for j in range(m):
        baby_steps[current] = j
        current = curve.add(current, generator_point)

    giant_step = curve.mul(m, generator_point)
    if giant_step is None:
        giant_step_inv = None
    else:
        giant_step_inv = (giant_step[0], (curve.p - giant_step[1]) % curve.p)

    current = target_point
    for i in range(m):
        if current in baby_steps:
            j = baby_steps[current]
            d = i * m + j
            print(f"[+] Found d: {d}")
            return d
        current = curve.add(current, giant_step_inv)

    return None

def get_response(s):
    data = b""
    while True:
        try:
            chunk = s.recv(4096)
            if not chunk:
                break
            data += chunk
            if b"> " in chunk:
                break
        except socket.timeout:
            break
    return data.decode()

def parse_curve_params(text):
    # Find all hex strings starting with 0x
    hex_vals = re.findall(r'0x[0-9a-fA-F]+', text)

    if len(hex_vals) >= 6:
        p = int(hex_vals[0], 16)
        n = int(hex_vals[1], 16)
        Gx = int(hex_vals[2], 16)
        Gy = int(hex_vals[3], 16)
        Qx = int(hex_vals[4], 16)
        Qy = int(hex_vals[5], 16)
    else:
        print("[-] Failed to parse enough hex values.")
        print(hex_vals)
        sys.exit(1)

    # Parse a and b specifically
    a_match = re.search(r'a = (\d+)', text)
    b_match = re.search(r'b = (\d+)', text)
    a = int(a_match.group(1)) if a_match else 0
    b = int(b_match.group(1)) if b_match else 0

    return p, a, b, n, (Gx, Gy), (Qx, Qy)

def parse_prng_outputs(text):
    outputs = []
    for match in re.finditer(r'r\[\d+\] = (0x[0-9a-f]+)', text):
        outputs.append(int(match.group(1), 16))
    return outputs

def parse_ciphertext(text):
    m = re.search(r'ciphertext = ([0-9a-f]+)', text)
    if m:
        return m.group(1)
    return None

def solve():
    try:
        with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
            s.settimeout(10)
            s.connect((HOST, PORT))
            print(f"[*] Connected to {HOST}:{PORT}")

            # Flush banner
            get_response(s)

            # 1. Get curve parameters
            s.sendall(b"1\n")
            resp = get_response(s)
            p, a, b, n, G, Q = parse_curve_params(resp)
            print(f"[*] Curve secp192k1 loaded.")

            curve = Curve(p, a, b, n, G[0], G[1])

            # 2. Get PRNG outputs
            s.sendall(b"2\n")
            resp = get_response(s)
            r_outputs = parse_prng_outputs(resp)
            print(f"[*] Retrieved {len(r_outputs)} PRNG outputs.")

            # 3. Get Encrypted Flag
            s.sendall(b"3\n")
            resp = get_response(s)
            ciphertext_hex = parse_ciphertext(resp)
            print(f"[*] Ciphertext: {ciphertext_hex}")

            # 4. Solve DLP
            # We assume d is relatively small based on "Baby steps, giant steps" hint
            d = bsgs(curve, Q, G, 2**32)
            if not d:
                print("[-] Failed to find d. Exiting.")
                return

            d_inv = pow(d, -1, n)

            # 5. Recover State
            # Assuming r outputs are LSBs of (state * Q).x

            print("[*] Attempting state recovery...")
            if len(r_outputs) < 2:
                print("[-] Not enough outputs to verify state recovery.")
                return

            r0 = r_outputs[0]
            r1 = r_outputs[1]

            s2 = None
            for guess in range(256):
                # Try LSB assumption (x = (guess << 184) | r)
                x_cand = (guess << 184) | r0

                if x_cand >= curve.p: continue

                rhs = (x_cand**3 + curve.a * x_cand + curve.b) % curve.p
                if pow(rhs, (curve.p - 1) // 2, curve.p) != 1: continue

                y = pow(rhs, (curve.p + 1) // 4, curve.p)

                for y_cand in [y, curve.p - y]:
                    R = (x_cand, y_cand) # R = s1 * Q

                    # S = d^-1 * R = s1 * P
                    S = curve.mul(d_inv, R)
                    if S is None: continue

                    s_next_cand = S[0] # This should be s2

                    # Predict r1
                    T = curve.mul(s_next_cand, Q) # T = s2 * Q
                    if T is None: continue

                    r_next_pred = T[0] & ((1 << 184) - 1)

                    if r_next_pred == r1:
                        print(f"[+] State recovered! s2 = {s_next_cand}")
                        s2 = s_next_cand
                        break
                if s2: break

            if not s2:
                print("[-] Failed to recover state.")
                return

            # 6. Predict r4
            # s2 -> s3 -> s4 -> s5 -> r4

            # s3 = x(s2 * P)
            s3 = curve.mul(s2, G)[0]
            # s4 = x(s3 * P)
            s4 = curve.mul(s3, G)[0]
            # s5 = x(s4 * P)
            s5 = curve.mul(s4, G)[0]

            # r4 = trunc(x(s5 * Q))
            r4_point = curve.mul(s5, Q)
            r4 = r4_point[0] & ((1 << 184) - 1)

            print(f"[*] Predicted r4: {hex(r4)}")

            # 7. Decrypt
            key_bytes_raw = r4.to_bytes(32, 'big')
            key_bytes = hashlib.sha256(key_bytes_raw).digest()[:32]

            if not ciphertext_hex:
                print("[-] No ciphertext found.")
                return

            ciphertext = bytes.fromhex(ciphertext_hex)
            plaintext = bytearray()
            for i in range(len(ciphertext)):
                plaintext.append(ciphertext[i] ^ key_bytes[i % 32])

            flag = plaintext.decode(errors='ignore')
            print(f"[+] Decrypted Flag: {flag}")

            if "flag{" in flag:
                print("[*] Submitting flag...")
                s.sendall(b"4\n")
                get_response(s) # "Enter flag:"
                s.sendall(flag.encode() + b"\n")
                result = get_response(s)
                print(result)
    except ConnectionRefusedError:
        print("[-] Connection refused. Server might be down.")
    except Exception as e:
        print(f"[-] An error occurred: {e}")

if __name__ == "__main__":
    solve()
