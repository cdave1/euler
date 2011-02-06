// Find the largest palindrome made from the product of two 3-digit numbers.
#include <stdio.h>
#include <string.h>

#define MAX(x,y) ((x>y) ? x : y)

int palindrome(int n)
{
  char num[16];
  sprintf(num, "%d", n);
  int len = strlen(num), i = 0;
  while (num[i] == num[len-i-1] && ++i < (len/2));
  return (i == len/2);
}

int main (int argc, char ** argv)
{
  int max = 0;
  for (int i = 100; i <= 999; ++i)
    for (int j = 100; j <= 999; ++j)
      if (palindrome(i*j)) max = MAX(max, i*j);
  printf("%d\n", max);
  return 0;
}
