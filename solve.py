import socket
import binascii
import sys

DEFAULT_HOST = '209.38.161.3'
DEFAULT_PORT = 51447

def get_response(s, stop_at=None):
    data = b""
    while True:
        try:
            chunk = s.recv(4096)
            if not chunk:
                break
            data += chunk
            if stop_at and stop_at in data:
                break
            if b"> " in data and not stop_at:
                break
        except socket.timeout:
            break
    return data.decode('utf-8', errors='ignore')

def xor_bytes(b1, b2):
    return bytes(x ^ y for x, y in zip(b1, b2))

def solve_part1(s):
    print("--- Solving Part 1 ---")
    s.sendall(b"1\n")
    resp = get_response(s)

    # Parse IV and CT
    iv_hex = ""
    ct_hex = ""
    for line in resp.splitlines():
        if "IV: " in line:
            iv_hex = line.split("IV: ")[1].strip()
        if "CT: " in line:
            ct_hex = line.split("CT: ")[1].strip()

    iv = binascii.unhexlify(iv_hex)
    ct = binascii.unhexlify(ct_hex)

    # Target plaintext: comment=hello123;admin=false;uid=1337
    # Block size 16
    # Block 1: comment=hello123 (16 bytes)
    # Block 2: ;admin=false;uid (16 bytes)

    # We want to change 'admin=false' to 'admin=true;'
    # We modify CT of Block 1 at corresponding indices (7-11)

    ct_mutable = bytearray(ct)

    original_val = b"false"
    target_val = b"true;"

    for i in range(len(original_val)):
        idx = 7 + i
        ct_mutable[idx] ^= original_val[i] ^ target_val[i]

    modified_ct_hex = binascii.hexlify(ct_mutable).decode()

    s.sendall(b"2\n")
    get_response(s, stop_at=b"IV (hex): ")
    s.sendall(iv_hex.encode() + b"\n")
    get_response(s, stop_at=b"CT (hex): ")
    s.sendall(modified_ct_hex.encode() + b"\n")

    result = get_response(s)
    print(result.strip())

    # Extract flag part 1
    if "FLAG PART 1: " in result:
        return result.split("FLAG PART 1: ")[1].strip()
    return ""

def solve_part2(s):
    print("--- Solving Part 2 ---")

    # Step 1: Get known plaintext/ciphertext pair (Option 4)
    s.sendall(b"4\n")
    resp_opt4 = get_response(s)

    known_pt = ""
    known_ct_hex = ""
    for line in resp_opt4.splitlines():
        if "Known plaintext: " in line:
            known_pt = line.split("Known plaintext: ")[1].strip()
        if "Known ciphertext: " in line:
            known_ct_hex = line.split("Known ciphertext: ")[1].strip()

    known_ct = binascii.unhexlify(known_ct_hex)
    known_pt_bytes = known_pt.encode()

    # Step 2: Get encrypted flag part 2 (Option 3)
    s.sendall(b"3\n")
    resp_opt3 = get_response(s)

    flag_ct_hex = ""
    for line in resp_opt3.splitlines():
        if "Encrypted flag part 2: " in line:
            flag_ct_hex = line.split("Encrypted flag part 2: ")[1].strip()

    flag_ct = binascii.unhexlify(flag_ct_hex)

    # Step 3: Calculate keystream
    keystream = xor_bytes(known_ct, known_pt_bytes)

    # Step 4: Decrypt flag
    flag_pt = xor_bytes(flag_ct, keystream[:len(flag_ct)])

    flag_part2 = flag_pt.decode('utf-8', errors='ignore')
    print("Result Part 2:", flag_part2)
    return flag_part2

def main():
    host = DEFAULT_HOST
    port = DEFAULT_PORT

    if len(sys.argv) > 1:
        host = sys.argv[1]
    if len(sys.argv) > 2:
        port = int(sys.argv[2])

    try:
        with socket.socket(socket.AF_INET, socket.SOCK_STREAM) as s:
            s.settimeout(5)
            s.connect((host, port))
            get_response(s) # Initial banner

            part1 = solve_part1(s)
            part2 = solve_part2(s)

            print("\nFull Flag:", part1 + part2)

    except Exception as e:
        print(f"Error: {e}")

if __name__ == "__main__":
    main()
