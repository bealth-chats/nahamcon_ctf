import string

ciphertext = "ODEXRKFAKVHAVKXFROLRBFOXRT"

def get_inverse(a, m):
    try:
        return pow(a, -1, m)
    except ValueError:
        return None

def decrypt(ciphertext, a, b):
    plaintext = ""
    a_inv = get_inverse(a, 26)
    if a_inv is None:
        return None

    for char in ciphertext:
        if char.isalpha():
            y = ord(char.upper()) - ord('A')
            x = (a_inv * (y - b)) % 26
            plaintext += chr(x + ord('A'))
        else:
            plaintext += char
    return plaintext

print("Brute forcing Affine Cipher...")
possible_a = [1, 3, 5, 7, 9, 11, 15, 17, 19, 21, 23, 25]

for a in possible_a:
    for b in range(26):
        decrypted = decrypt(ciphertext, a, b)
        if decrypted:
            # Simple heuristic: check if it contains common English words or structure
            # But for now, just print everything and I'll inspect
            print(f"a={a}, b={b}: {decrypted}")
