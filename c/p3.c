#include <stdio.h>
#include <strings.h>
#include <stdbool.h>

unsigned int primes[100000];
unsigned int primeCount = 0;

void getPrimeDivisors(unsigned long long n, unsigned long long lim)
{
  if (lim == 1) return;
  if (n > lim) return;
  bool addPrime = true;
  for (int i = 0; i < primeCount; i++)
  {
    if (n % primes[i] == 0) {
      addPrime = false;
      break;
    }
  }
  if (addPrime) {
    primes[primeCount++] = n;
    if (lim % n == 0) {
      lim = lim / n;
      printf("%d\n", n);
    }
  }
  getPrimeDivisors(n+2, lim);
}    


int main (int argc, char ** argv)
{
  bzero(primes, sizeof(primes));
  primes[primeCount++] = 2;
  unsigned long long limit = 600851475143;
  getPrimeDivisors(3, limit);
  return 0;
}
