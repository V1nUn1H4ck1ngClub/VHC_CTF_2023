
from pwn import *
import json
import base64
import os
from threading import Thread

con=remote('14.225.211.39',13370)
print(con.recvline())
# Since we know VHC2023{ , start guessing from index 7 
i=8
flag = "VHC2023{"
while 1:
  print("Guessing Byte "+str(i+1), end=" ")
  attempts=0  # Just to measure how many tries it took to narrow down to this byte
  key_space=set(string.ascii_letters + string.digits + '_}')  # possible values for byte
  while len(key_space)>1:  # until narrows down to one
    attempts+=1
    try:
      data={"cmd": "request"}
      # print("Trying "+str(data))
      con.sendline(json.dumps(data).encode())
      recv_data = con.recvline().decode()
      # print(recv_data)
      flag_64=json.loads(recv_data)["ciphertext"]
      key_space.remove(chr(base64.b64decode(flag_64)[i]))
    except:
      pass

  print(f"After {attempts} attempts -> "+str(key_space))
  flag+=key_space.pop()
  if '}' in key_space:
    break
  i+=1  

print("Flag is "+flag)