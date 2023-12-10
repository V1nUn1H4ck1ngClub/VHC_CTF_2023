from Crypto.Util.number import long_to_bytes, bytes_to_long, isPrime, size
from os import urandom 
from config import FLAG, m, c, n

BIT_MODE = 2048
PRIME_MODE = 512

class LCG: 
    def __init__(self, m, c, n):
        self.m = m
        self.c = c
        self.n = n
        # I don't know how to choose a good seed...
        self.state = bytes_to_long(urandom(PRIME_MODE // 8))
                
    def next(self):
        self.state = (self.state * self.m + self.c) % self.n
        return self.state
    
lcg = LCG(m=m, c=c, n=n)

if __name__ == "__main__":
    noise_record = []
    primes = []
    dumps_file = open("dumps.txt", "w")
    recorded = 0 
    SEED = lcg.state

    # I will write a report as short as possible...
    while True: 
        prime_candidate = lcg.next() 
        if recorded < 6: 
            dumps_file.write(str(prime_candidate) + "\n")
            recorded += 1
        if not isPrime(prime_candidate):
            continue 
        elif size(prime_candidate) != PRIME_MODE:
            continue
        else: 
            primes.append(prime_candidate)
            if len(primes) == 4:
                break
    
    N = 1
    phi = 1
    for prime in primes: 
        phi *= (prime - 1)
        N *= prime

    e = 65537
    d = pow(e, -1, phi)
    ciphertext = pow(bytes_to_long(FLAG), e, N)
    with open("output.txt", "w") as f: 
        f.write("seed = " + str(SEED) + "\n")
        f.write("e = " + str(e) + "\n")
        f.write("c = " + str(ciphertext) + "\n")
        f.write("N = " + str(N) + "\n")


