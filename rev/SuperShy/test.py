# SuperShy 
PASSWORD = "Y0u_4r3_th3_t0p_b4b3_!(o^.^o)!"
print(len(PASSWORD))

def encode(data):
    sEncodingTable = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz+/"
    in_len = len(data)
    out_len = 4 * ((in_len + 2) / 3)
    ret = [0]*int(out_len)
    i=0
    charPointer=0
    while(i < in_len - 2):
        ret[charPointer] = sEncodingTable[(data[i] >> 2) & 0x3F]; charPointer+=1
        ret[charPointer] = sEncodingTable[((data[i] & 0x3) << 4) | (int (data[i + 1] & 0xF0) >> 4)]; charPointer+=1
        ret[charPointer] = sEncodingTable[((data[i + 1] & 0xF) << 2) | (int (data[i + 2] & 0xC0) >> 6)]; charPointer+=1
        ret[charPointer] = sEncodingTable[data[i + 2] & 0x3F]; charPointer+=1
        i += 3

    if (i < in_len):
        ret[charPointer] = sEncodingTable[(data[i] >> 2) & 0x3F]; charPointer+=1
        if (i == (in_len - 1)):
            ret[charPointer] = sEncodingTable[((data[i] & 0x3) << 4)];charPointer+=1
            ret[charPointer] = '=';charPointer+=1
        else:
            ret[charPointer] = sEncodingTable[((data[i] & 0x3) << 4) | (int(data[i + 1] & 0xF0) >> 4)];charPointer+=1
            ret[charPointer] = sEncodingTable[((data[i + 1] & 0xF) << 2)];charPointer+=1

        ret[charPointer] = '=';charPointer+=1
    return (''.join([n for n in ret if n != 0]))


new_password = ""
for char in PASSWORD: 
    if char in "ABCDEFGHIJKLMNOPQRSTUVWXYZ":
        new_password += chr(65 + (ord(char) - 65 + 13) % 26)
    elif char in "abcdefghijklmnopqrstuvwxyz":
        new_password += chr(97 + (ord(char) - 97 + 13) % 26)
    else: 
        new_password += char

new_password = bytes(list([ord(n) for n in new_password]))
print(list(new_password))
new_password = bytes([n ^ 0x2a for n in new_password])
print(list(new_password))
encoded_pass = encode(new_password)

print(encoded_pass)