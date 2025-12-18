import base64

def solve():
    encoded_str = "cXt2cEwEA0ROaHAGUUNoYwdodQQBBnlob3oDAko="
    decoded_bytes = base64.b64decode(encoded_str)

    # Based on analysis, the key is 0x37 repeated
    key = 0x37

    decrypted_chars = []
    for byte in decoded_bytes:
        decrypted_chars.append(chr(byte ^ key))

    flag = "".join(decrypted_chars)
    print(flag)

if __name__ == "__main__":
    solve()
