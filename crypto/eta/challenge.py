import socket
import threading 
import os 
import json 
import base64

FLAG = "VHC2023{n0t_2_b4d_07p}"

def xor_flag():
    flag_ord = [ord(c) for c in FLAG]
    otp = os.urandom(len(FLAG))

    xored = bytearray([a ^ b for a, b in zip(flag_ord, otp)])
    for c, p in zip(xored, flag_ord):
        assert c ^ p != 0 

    return xored 

class Server: 
    def __init__(self, bind_ip, bind_port):
        self.server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.server.bind((bind_ip, bind_port))
        self.server.listen(25) # change this to extend the maximum number of clients
    
    def handle_client(self, client_socket: socket.socket):
        client_socket.send(b"What's your ETA? :D\n")
        while True: 
            try: 
                request = json.loads(client_socket.recv(1024))
                if request == {"cmd": "request"}:
                    try: 
                        ciphertext = xor_flag()
                    except AssertionError:
                        message = {"error": "He's been totally leaking, yeah! :("}
                        client_socket.send(json.dumps(message).encode() + b"\n")
                        continue
                    message = {"ciphertext": base64.b64encode(ciphertext).decode()}
                    client_socket.send(json.dumps(message).encode() + b"\n")
                else:
                    raise Exception
            except: 
                message = {"error": "We can go whenever you like, now where are you?!"}
                client_socket.send(json.dumps(message).encode() + b"\n")
                client_socket.shutdown(1)
                client_socket.close()

    def running_service(self):
        while True:
            client, addr = self.server.accept()
            # print("[*] Accepted connection from: %s:%d" % (addr[0], addr[1]))
            client_handler = threading.Thread(target=self.handle_client, args=(client,))
            client_handler.start()

if __name__ == "__main__":
    s = Server("0.0.0.0", 13370)
    s.running_service()