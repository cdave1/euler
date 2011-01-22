#include <stdio.h>

/*
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.

Find the sum of all the multiples of 3 or 5 below 1000.
*/

int main(int argc, char ** argv)
{
	int i = 0;
	int t = 0;
	while (++i < 1000)
	{
		if (i % 3 == 0 || i % 5 == 0) t += i;
	}
	printf("%d\n", t);

	return 0;
}
