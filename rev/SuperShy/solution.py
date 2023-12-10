TARGET = "Z7fC3RvPGXVNXnbrTRfJ3UU4RRbrCmJI3ARqSAML"
ALPHABET = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789abcdefghijklmnopqrstuvwxyz+/"
UPPERCASE = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
LOWERCASE = "abcdefghijklmnopqrstuvwxyz"

def shifter(character: str):
    if (character not in UPPERCASE) and (character not in LOWERCASE): 
        return character
    
    if character.islower():
        return LOWERCASE[(LOWERCASE.index(character) - 13) % 26]
    return UPPERCASE[(UPPERCASE.index(character) - 13) % 26]

def decrypt_block(cipher):
    assert len(cipher) == 4
    index_cipher = [ALPHABET.index(cipher[i]) for i in range(len(cipher))]

    plaintext = [0, 0, 0]
    plaintext[0] = index_cipher[0]
    lsb_plaintext_0 = (index_cipher[1] & 48) >> 4
    plaintext[0] = plaintext[0] << 2 | lsb_plaintext_0

    msb_plaintext_1 = (index_cipher[1] & 15)
    lsb_plaintext_1 = (index_cipher[2] & 60) >> 2
    plaintext[1] = (msb_plaintext_1 << 4) | (lsb_plaintext_1)
    
    lsb_plaintext_2 = (index_cipher[2] & 3)
    msb_plaintext_2 = (index_cipher[3] & 63)
    plaintext[2] = (lsb_plaintext_2 << 6) | msb_plaintext_2
    for i in range(len(plaintext)):
        plaintext[i] = plaintext[i] ^ 0x2A 
        plaintext[i] = chr(plaintext[i])
    return plaintext

def decrypt(ciphertext):
    plaintext = ""
    for i in range(0, len(ciphertext), 4):
        plaintext += "".join(decrypt_block(ciphertext[i:i+4]))
    for i in range(len(plaintext)):
        plaintext = plaintext[:i] + shifter(plaintext[i]) + plaintext[i+1:]
    return plaintext
print(decrypt(TARGET))