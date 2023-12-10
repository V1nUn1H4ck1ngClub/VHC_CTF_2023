import socket
import threading 
import random

FLAG = "VHC2023{d1dn7_th1nk_0f_s3gm3nt_tr33_r1ght?}"
STORE = [i for i in range(1024)]
QUERY_LIMIT = 3000 

class Server:
    def __init__(self, bind_ip, bind_port):
        self.server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
        self.server.bind((bind_ip, bind_port))
        self.server.listen(25) # change this to extend the maximum number of clients
    def query_handler(self, query):
        query = query.split()
        return (query[0], [int(i) for i in query[1:]]) 
    def handle_client(self, client_socket: socket.socket):
        message = f"""Welcome to the VHC Store!
I am having 1024 packages, with different prices. 
You can ask me to package whether ith or jth package is cheaper.
I will give you the answer, but I won't tell you the price.
You can ask me at most {QUERY_LIMIT} times :D\n
But I guess just 1337 or fewer are enough :)\n"""
        client_socket.send(message.encode())
        query_count = 0
        store_shuffled = STORE.copy()
        random.shuffle(store_shuffled)
        answer = store_shuffled.index(1021)
        print(answer) # for debugging
        while query_count < QUERY_LIMIT:
            try: 
                query = client_socket.recv(1024).decode().strip()
                query = self.query_handler(query)
                if query[0] == "query":
                    if len(query[1]) != 2: 
                        raise Exception("Invalid query")
                    i, j = query[1][0], query[1][1]
                    if i < 0 or j < 0 or i > 1024 or j > 1024:
                        raise Exception("Invalid query index")
                    if i == j:
                        raise Exception("Invalid query index")
                    query_count += 1
                    if store_shuffled[i] < store_shuffled[j]:
                        message = "i < j\n"
                    else:
                        message = "i > j\n"
                    client_socket.send(message.encode())
                    if query_count == QUERY_LIMIT:
                        message = "You have reached the query limit!\n"
                        client_socket.send(message.encode())
                        client_socket.shutdown(1)
                        client_socket.close()
                        return
                    continue
                if query[0] == "submit":
                    if len(query[1]) != 1:
                        raise Exception("Invalid submit")
                    i = query[1][0]
                    if i < 0 or i > 1024:
                        raise Exception("Invalid submit index")
                    query_count += 1
                    if i == answer:
                        message = f"You got it!\nHere is your flag: {FLAG}\n"
                    else:
                        message = "Nope! You should try better :)\n"
                    client_socket.send(message.encode())
                    client_socket.shutdown(1)
                    client_socket.close()
                    return
                raise Exception("Misc error")
            except Exception as err:
                message = "Bye! " + err.args[0] + "\n"
                client_socket.send(message.encode())
                client_socket.shutdown(1)
                client_socket.close()
                return
        client_socket.shutdown(1)
        client_socket.close()

    def running_service(self):
        while True:
            client, addr = self.server.accept()
            # print("[*] Accepted connection from: %s:%d" % (addr[0], addr[1]))
            client_handler = threading.Thread(target=self.handle_client, args=(client,))
            client_handler.start()

if __name__ == "__main__":
    s = Server("0.0.0.0", 13371)
    s.running_service()