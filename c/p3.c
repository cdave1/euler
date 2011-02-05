#include <stdio.h>
#include <strings.h>

void getPrimeDivisors(unsigned long long n, unsigned long long lim)
{
  if (lim == 1) return;
  if (lim % n == 0) {
      lim = lim / n;
      printf("%d\n", n);
  }
  getPrimeDivisors(n+1, lim);
}    


int main (int argc, char ** argv)
{
  unsigned long long limit = 600851475143;
  getPrimeDivisors(2, limit);
  return 0;
}
