import base64

def oracle(flag, key):
    flag_len = len(flag)
    key_len = len(key)
    output = flag
    for i in range(flag_len - key_len + 1):
        for j in range(key_len):
            output[i + j] ^= key[j]
    return output

cipher_base64ed = "VkhDMjAyM3tJX3RoMHVnaHRfMXRfdzRzXzEwfQ=="
cipher = base64.b64decode(cipher_base64ed)
cipher = list(cipher)

cribs = b"VHC2023{"
end = b"}"

key = [0] * 9 # Not 10 :) Because the last one is null-terminated :)

# bruteforce the first 8 bytes 
# Observation:
# c[0] = p[0] ^ k[0]
# c[1] = p[1] ^ k[0] ^ k[1]
# c[2] = p[2] ^ k[0] ^ k[1] ^ k[2]
# ...
# As we knew the flag format, we can bruteforce the first 8 bytes of the key

def xor_a_lot(value, xor_values):
    result = value 
    for val in xor_values:
        result ^= val
    return result

for i in range(len(cribs)):
    for byte in range(0, 256):
        if byte ^ xor_a_lot(cipher[i], key) == cribs[i]:
            key[i] = byte
            break

# bruteforce the last 1 byte
# same logic for last byte

for byte in range(0, 256):
    if byte ^ xor_a_lot(cipher[-1], key) == end[0]:
        key[-1] = byte
        break

print("".join([chr(x) for x in oracle(cipher, key)]))