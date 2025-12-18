decrypted1 = bytearray(b'\xe0\x00\xf6h\xe5\x80\x85^\xe8\x1f\x00o>\x9b\x88]\xf3\x148\xffI\xe4&\xd9\xce\xf1\xc4\x9fx\x83\x0e\xe7\x11y\r\x90l\xf2\x1f\xda\xbe\x1b\xc8\x95')

def try_xor(data, key_str):
    key = key_str.encode('utf-8')
    res = bytearray()
    for i in range(len(data)):
        res.append(data[i] ^ key[i % len(key)])
    return res

print(f"XOR with 'Frost King': {try_xor(decrypted1, 'Frost King')}")
print(f"XOR with 'FrostKing': {try_xor(decrypted1, 'FrostKing')}")
print(f"XOR with 'frost king': {try_xor(decrypted1, 'frost king')}")
print(f"XOR with 'FROST KING': {try_xor(decrypted1, 'FROST KING')}")

# Try to XOR with 0xA6 (PUSH)
xor_a6 = bytearray([b ^ 0xa6 for b in decrypted1])
print(f"XOR with 0xA6: {xor_a6}")
try:
    print(f"XOR with 0xA6 (utf-8): {xor_a6.decode('utf-8')}")
except:
    pass
