#include <stdio.h>
#include <stdlib.h>

int isPrime(unsigned long number) {
  unsigned long i;

  if (number <= 1) {
    return 0;
  }

  for (i=2; i*i<=number; i++) {
    if (number % i == 0) {
      return 0;
    }
  }
  return 1;
}

int main() {
  unsigned long N, largest, i = 2;

  scanf("%ld", &N);

  while(i <= N) {
    if (N % i == 0 && isPrime(i)) {
      largest = i;
      N /= i;
    } else {
      i++;
    }
  }

  printf("%ld", largest);
  return 0;
}
