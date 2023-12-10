from hashlib import sha256
from Crypto.Util.number import bytes_to_long, long_to_bytes
from ecdsa.ecdsa import curve_256, generator_256, Public_key, Private_key, Signature
from ecdsa.ellipticcurve import Point
from random import randint

# J4F, don't take it too seriously :)

professors = {
    "s4shaNull": "Non-linear Algebra",
    "goldenskygiang": "XacChetThongKho",
    "Thanh-WuTan & Cl4ris": "Connected Mathematics"
}

FLAG = "VHC2023{??????????????????????}"

def genKeyPair():
    d = randint(1, q - 1)
    pubkey = Public_key(G, d*G)
    privkey = Private_key(pubkey, d)
    return privkey, pubkey

G = generator_256
q = G.order()
privkey, pubkey = genKeyPair()

def professor_signature(msg, privkey, confidence):
    confidence_convert = int((confidence/100) * 256)
    # I must do some integrity check here...
    hash_msg = sha256(msg.encode()).digest()
    # my nonce should not be such that ez to guess
    nonce = sha256(long_to_bytes(privkey.secret_multiplier) + hash_msg).digest()[:confidence_convert//8]
    signature = privkey.sign(bytes_to_long(hash_msg), bytes_to_long(nonce))
    return {"msg": msg, "r": hex(signature.r), "s": hex(signature.s)}

def get_transcript(privkey, pubkey):
    print("Hell yeah, we are the professors grading your exam!")
    
    total_confidence = 0
    for professor in professors: 
        print("Professor {} is/are grading your exam...".format(professor))
        confidence = randint(51, 69)
        print("Your grade is F. We are {}% confident about that.".format(confidence))
        total_confidence += confidence
    
    avg_confidence = int(total_confidence / len(professors))
    
    print(f"Writing your transcript with {avg_confidence}% confidence...")
    print(f"We use curve secp256k1.")

    signatures = []
    transcripts = []
    
    for professor in professors:
        transcript = f"Student: h114mx001, class: {professors[professor]}, grade: F"
        signature = professor_signature(transcript, privkey, avg_confidence)
        signatures.append(signature)
        transcripts.append(transcript)
        print(f"{signature}")
    
    print("Now submit your transcript to Office of Registrar! Remember to tell them reverify our signature with this pubkey.")
    print(str((int(pubkey.point.x()), int(pubkey.point.y()))))

def registrar_submission(msg, pubkey, r, s):
    print("Hello, this is Office of Registrar. We are verifying your transcript...")
    hash_msg = sha256(msg.encode()).digest()
    r = int(r, 16)
    s = int(s, 16)
    signature = Signature(r, s)
    pubkey = Public_key(G, Point(curve_256, pubkey[0], pubkey[1]))
    if msg != "Student: h114mx001, GPA: 4.0":
        return "Oh... how bad you are... You are not getting President's List this academic year!"
    if not pubkey.verifies(bytes_to_long(hash_msg), signature):
        return "What? You are falsifying your transcript? You must be expelled!"
    print("Congrats! You are getting President's List this academic year!")
    print(f"Here is your flag: {FLAG}")
    return True

# main challenge
def challenge(self, your_input):
    if your_input["cmd"] == "get_transcript":
        get_transcript(privkey, pubkey)
    if your_input["cmd"] == "registrar_submission":
        res = registrar_submission(your_input["msg"], your_input["pubkey"], your_input["r"], your_input["s"])
        if res != True:
            return {"error": res}
        
# utils.listener(port=13375, challenge=challenge)