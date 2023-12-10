import socket
import threading 
import json 
from hashlib import sha256
from Crypto.Util.number import bytes_to_long, long_to_bytes
from ecdsa.ecdsa import curve_256, generator_256, Public_key, Private_key, Signature
from ecdsa.ellipticcurve import Point
from random import randint
from contextlib import suppress

FLAG = "VHC2023{d0n't_try_th1s_4t_h0me}"

professors = {
    "s4shaNull": "Non-linear Algebra",
    "goldenskygiang": "XacChetThongKho",
    "Thanh-WuTan & Cl4ris": "Connected Mathematics"
}

G = generator_256
q = G.order()

def genKeyPair():
    d = randint(1, q - 1)
    pubkey = Public_key(G, d*G)
    privkey = Private_key(pubkey, d)
    return privkey, pubkey

def professor_signature(msg, privkey, confidence):
    confidence_convert = int((confidence/100) * 256)
    # I must do some integrity check here...
    hash_msg = sha256(msg.encode()).digest()
    # my nonce should not be such that ez to guess
    nonce = sha256(long_to_bytes(privkey.secret_multiplier) + hash_msg).digest()[:confidence_convert//8]
    signature = privkey.sign(bytes_to_long(hash_msg), bytes_to_long(nonce))
    return {"msg": msg, "r": hex(signature.r), "s": hex(signature.s)}

def registrar_submission(msg, pubkey, r, s, client_socket: socket.socket):
    client_socket.send(b"Hello, this is Office of Registrar. We are verifying your transcript...\n")
    hash_msg = sha256(msg.encode()).digest()
    r = int(r, 16)
    s = int(s, 16)
    signature = Signature(r, s)
    pubkey = Public_key(G, Point(curve_256, pubkey[0], pubkey[1]))
    if msg != "Student: h114mx001, GPA: 4.0":
        return "Oh... how bad you are... You are not getting President's List this academic year!\n"
    if not pubkey.verifies(bytes_to_long(hash_msg), signature):
        return "What? You are falsifying your transcript? You must be expelled!\n"
    client_socket.send(b"Congrats! You are getting President's List this academic year!\n")
    client_socket.send(f"Here is your flag: {FLAG}\n".encode())
    return True

def get_transcript(privkey, pubkey, client_socket: socket.socket):
    client_socket.send(b"Hell yeah, we are the professors grading your exam!\n")
    
    total_confidence = 0
    for professor in professors: 
        client_socket.send("Professor {} is/are grading your exam...\n".format(professor).encode())
        confidence = randint(51, 69)
        client_socket.send("Your grade is F. We are {}% confident about that.\n".format(confidence).encode())
        total_confidence += confidence
    
    avg_confidence = int(total_confidence / len(professors))
    
    client_socket.send(f"Writing your transcript with {avg_confidence}% confidence...\n".encode())
    client_socket.send(b"We use curve secp256k1.\n")

    signatures = []
    transcripts = []
    
    for professor in professors:
        transcript = f"Student: h114mx001, class: {professors[professor]}, grade: F"
        signature = professor_signature(transcript, privkey, avg_confidence)
        signatures.append(signature)
        transcripts.append(transcript)
        client_socket.send(json.dumps(signature).encode() + b"\n")
    
    client_socket.send(b"Now submit your transcript to Office of Registrar! Remember to tell them reverify our signature with this pubkey.\n")
    client_socket.send(str((int(pubkey.point.x()), int(pubkey.point.y()))).encode() + b"\n")

class Server:
    def __init__(self, bind_ip, bind_port):
        self.server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.server.bind((bind_ip, bind_port))
        self.server.listen(25) # change this to extend the maximum number of clients

    def handle_client(self, client_socket: socket.socket):
        client_socket.send(b"Welcome to College of VHC!\n")
        privkey, pubkey = genKeyPair()
        while True: 
            with suppress(OSError):
                try:
                    request = json.loads(client_socket.recv(1024))
                    if request["cmd"] == "get_transcript":
                        get_transcript(privkey, pubkey, client_socket)
                    elif request["cmd"] == "registrar_submission":
                        res = registrar_submission(request["msg"], request["pubkey"], request["r"], request["s"], client_socket)
                        if res != True:
                            client_socket.send(res.encode())
                        client_socket.shutdown(1)
                        client_socket.close()
                    else:
                        raise Exception
                except Exception as e:
                    client_socket.send(b"Invalid request!\n")
                    print(e)
                    client_socket.shutdown(1)
                    client_socket.close()

        
    def running_service(self):
        while True:
            client, addr = self.server.accept()
            client_handler = threading.Thread(target=self.handle_client, args=(client,))
            client_handler.start()

if __name__ == "__main__":
    s = Server("0.0.0.0", 13375)
    s.running_service()
