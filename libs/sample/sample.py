import socket
import threading 

class Server: 
    def __init__(self, bind_ip, bind_port):
        self.server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.server.bind((bind_ip, bind_port))
        self.server.listen(10) # change this to extend the maximum number of clients
        print(f"[*] Listening on {bind_ip}:{bind_port}")
    
    def handle_client(self, client_socket):
        request = client_socket.recv(1024) # change this to extend the maximum number of bytes to receive
        print(f"[*] Received: {request}")
        client_socket.send(b"ACK!\n") # change this to send a custom message. If you send a string, please remember to .encode() it
        client_socket.close()

    def running_service(self):
        while True:
            client, addr = self.server.accept()
            print("[*] Accepted connection from: %s:%d" % (addr[0], addr[1]))
            client_handler = threading.Thread(target=self.handle_client, args=(client,))
            client_handler.start()

if __name__ == "__main__":
    s = Server("0.0.0.0", 12345)
    s.running_service()