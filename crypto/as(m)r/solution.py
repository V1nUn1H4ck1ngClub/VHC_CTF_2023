# all you need is https://tailcall.net/posts/cracking-rngs-lcgs/

with open("output.txt", "r") as f:
    seed = int(f.readline().strip().split(" = ")[1])
    e = int(f.readline().strip().split("=")[1])
    c = int(f.readline().strip().split("=")[1])
    N = int(f.readline().strip().split("=")[1])

print("seed =", seed)
print("n =", N)
print("e =", e)
print("c =", c)

BIT_MODE = 2048
PRIME_MODE = 512

primes = []

from Crypto.Util.number import long_to_bytes, bytes_to_long, isPrime, size
from math import gcd
from functools import reduce

# Reimplement of LCG 
class _LCG:
    def __init__(self, multiplier, increment, modulus, lcg_s):
        self.state = lcg_s
        self.lcg_m = multiplier
        self.lcg_c = increment
        self.lcg_n = modulus

    def next(self):
        self.state = (self.state * self.lcg_m + self.lcg_c) % self.lcg_n
        return self.state

def crack_unknown_increment(states, modulus, multiplier):
    increment = (states[1] - states[0]*multiplier) % modulus
    return modulus, multiplier, increment

def crack_unknown_multiplier(states, modulus):
    multiplier = (states[2] - states[1]) * pow(states[1] - states[0], -1, modulus) % modulus
    return crack_unknown_increment(states, modulus, multiplier)

def crack_unknown_modulus(states):
    diffs = [s1 - s0 for s0, s1 in zip(states, states[1:])]
    zeroes = [t2*t0 - t1*t1 for t0, t1, t2 in zip(diffs, diffs[1:], diffs[2:])]
    modulus = abs(reduce(gcd, zeroes))
    return crack_unknown_multiplier(states, modulus)

dumps = []
with open("dumps.txt", "r") as f: 
    for line in f: 
        dumps.append(int(line.strip()))

modulus, multiplier, increment = crack_unknown_modulus(dumps)
print("Done cracking LCG")

print("modulus =", modulus)
print("multiplier =", multiplier)
print("increment =", increment)

_lcg = _LCG(multiplier, increment, modulus, seed)

while True: 
    prime_candidate = _lcg.next() 
    if not isPrime(prime_candidate):
        continue 
    elif size(prime_candidate) != PRIME_MODE:
        continue
    else: 
        primes.append(prime_candidate)
        if len(primes) == 4:
            break

print("Finish recovering primes")
print("primes =", primes)

assert len(primes) == 4
n_reconstructed = primes[0] * primes[1] * primes[2] * primes[3]
assert n_reconstructed == N

phi = 1
for prime in primes: 
    phi *= (prime - 1)

d = pow(e, -1, phi)
m = pow(c, d, N)
print(long_to_bytes(m))
