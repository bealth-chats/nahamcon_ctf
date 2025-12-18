decrypted1 = bytearray(b'\xe0\x00\xf6h\xe5\x80\x85^\xe8\x1f\x00o>\x9b\x88]\xf3\x148\xffI\xe4&\xd9\xce\xf1\xc4\x9fx\x83\x0e\xe7\x11y\r\x90l\xf2\x1f\xda\xbe\x1b\xc8\x95')

# Try key A6 A5 A4 A3
key_opcodes = [0xA6, 0xA5, 0xA4, 0xA3]
res = bytearray()
for i, b in enumerate(decrypted1):
    res.append(b ^ key_opcodes[i % 4])
print(f"XOR with opcodes: {res}")
try:
    print(f"XOR with opcodes (utf-8): {res.decode('utf-8')}")
except:
    pass

# Try with key "Frost King" but using indices? No.
