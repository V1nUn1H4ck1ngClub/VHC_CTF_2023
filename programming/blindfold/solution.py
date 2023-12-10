# pip install pwntools 
from pwn import * 

IP = "127.0.0.1"
PORT = 13371
io = remote(IP, PORT)

# skip the banner
print(io.recvuntil("times :D\n").decode())

def query(i, j):
    # Return 0 if a[i] < a[j], 1 if a[i] > a[j
    message = f"query {i} {j}"
    io.sendline(message.encode())
    response = io.recvline().decode()
    if response == "i < j\n":
        return 0
    elif response == "i > j\n":
        return 1

def submit(i):
    message = f"submit {i}"
    io.sendline(message.encode())
    print(io.recvline().decode())

# query 0, 1
print(query(0, 1))