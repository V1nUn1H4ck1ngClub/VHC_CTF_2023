# 3 ways to solve: 
# + Using ChatGPT/GitHub Copilot/any tools you have. 
# + clang -o wyvern wyvern.ll and using IDA/BinaryNinja 
# + Read the LLVM IR directly :) 

from pwn import *

key1 = b"\253\212\305\376G"
key2 = b"y\361\320\004\350"
key3 = b"\370\373\365\347\271"
key4 = b"\266\034\312Qp"

key1 = bytearray(key1)
key2 = bytearray(key2)
key3 = bytearray(key3)
key4 = bytearray(key4)

print("key1: ", key1)
print("key2: ", key2)
print("key3: ", key3)
print("key4: ", key4)

def encrypt1(inputBuf, key, start, end, step):
    counter = 0 
    inputBuf = bytearray(inputBuf)
    key = bytearray(key)
    for i in range(start, end, step):
        tmp = key[counter]
        inpTmp = inputBuf[i]
        key[counter] = inputBuf[i]
        inputBuf[i] = tmp

        keyVal = key[counter]
        inputVal = inputBuf[i]
        xorVal = keyVal ^ inputVal
        inputBuf[i] = xorVal
        counter += 1
        counter %= 5
    return bytes(inputBuf)

def decrypt1(inputBuf, key):
    # pad inputBuf with 0x00 to make it a multiple of 5
    result = b""
    pad_number = len(inputBuf) % 5
    inputBuf += b"\x00" * (len(inputBuf) % 5)
    for i in range(0, len(inputBuf), 5):
        c_block = inputBuf[i:i+5]
        k_block = key
        result += xor(c_block, k_block)
        key = result[i:i+5]
    return result[:-pad_number]

def encrypt2(inputBuf, key, start, end, step):
    counter = 0
    inputBuf = bytearray(inputBuf)
    key = bytearray(key)
    for i in range(start, end, step):
        # print(i, counter)
        inputVal = inputBuf[i]
        keyVal = key[counter]
        xorVal = keyVal ^ inputVal
        inputBuf[i] = xorVal
        counter += 1
        counter %= 5
    return bytes(inputBuf)

def decrypt2(inputBuf, key, start, end, step):
    counter = 0
    inputBuf = bytearray(inputBuf)
    key = bytearray(key)
    for i in range(start, end, step):
        # print(i, counter)
        inputVal = inputBuf[i]
        keyVal = key[counter]
        xorVal = keyVal ^ inputVal
        inputBuf[i] = xorVal
        counter += 1
        counter %= 5
    return bytes(inputBuf)

def encode(inputBuf):
    cipher = [0] * 16
    j = 0
    for i in range(0, len(inputBuf), 4):
        cipher[j] = inputBuf[i] << 8 | inputBuf[i+2]
        cipher[j+1] = inputBuf[i+1] << 8 | inputBuf[i+3]
        j += 2
    return cipher

def decode(encoded):
    buffer = [0] * 32
    j = 0
    for i in range(0, len(encoded), 2):
        buffer[j] = encoded[i] >> 8
        buffer[j+2] = encoded[i] & 0xff
        buffer[j+1] = encoded[i+1] >> 8
        buffer[j+3] = encoded[i+1] & 0xff
        j += 4
    return buffer

# You can convert the i16 to u16 by using the script conversion.c
encoded =[16977, 23678, 28325, 12148, 52629, 23399, 54841, 20663, 21868, 52075, 44001, 7761, 22036, 57732, 27056, 14160]

decoded = decode(encoded)
print(decoded)
decoded = bytes(decoded)
decoded_dec_2_2 = decrypt2(decoded, key4, 0, 32, 1)
print(len(decoded_dec_2_2))
decoded_dec_1_2 = decrypt1(decoded_dec_2_2, key3)
print(len(decoded_dec_1_2))
decoded_dec_2_1 = decrypt2(decoded_dec_1_2, key2, 31, -1, -1)
print(len(decoded_dec_2_1))
decoded_dec_1_1 = decrypt1(decoded_dec_2_1, key1)
print(len(decoded_dec_1_1))
print(decoded_dec_1_1[:32])
