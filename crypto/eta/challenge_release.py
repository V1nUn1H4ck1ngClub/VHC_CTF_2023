import base64 
import os 
# import utils

FLAG = "VHC2023{?????????????}"

def xor_flag():
    flag_ord = [ord(c) for c in FLAG]
    otp = os.urandom(len(FLAG))

    xored = bytearray([a ^ b for a, b in zip(flag_ord, otp)])
    for c, p in zip(xored, flag_ord):
        assert c ^ p != 0 
    return xored 

print("No leaks :)")

def challenge(self, your_input):
    if your_input == {"cmd": "request"}:
        try:
            ciphertext = xor_flag()
        except AssertionError:
            return {"error": "It's so leakyyyyy!"}
        return {"ciphertext": base64.b64encode(ciphertext).decode()}
    else:
        self.exit = True 
        return {"error": "Bye!"}
    
# utils.listener(port=13370, challenge=challenge)