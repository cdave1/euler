import sys
sys.setrecursionlimit(10000)


def getPrimeDivisors(n, lim, primes):
    if lim == 1: return
    if n > lim: return
    addprime = True
    for p in primes:
        if (n % p == 0):
            addprime = False
            break;
    if addprime:
        primes.append(n)
        if lim % n == 0:
            lim = lim / n
            print n
    getPrimeDivisors(n+2, lim, primes) 


pr = [2]
getPrimeDivisors(3, 600851475143, pr)
