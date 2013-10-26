#include <stdio.h>
#include <stdlib.h>

int main() {
  int *numbers, count, i;

  scanf("%d", &count);

  if (count == 0) {
    fprintf(stderr, "Inputs count should be more than 0");
    return 1;
  }

  numbers = (int *)malloc(count * sizeof (int));

  for (i = 0; i < count; i++) {
    scanf("%d", &numbers[i]);
  }


  int max        = numbers[0],
      maxCurrent = max;

  for (i = 1; i < count; i++) {
    maxCurrent += numbers[i];

    if (numbers[i] > maxCurrent) {
      maxCurrent = numbers[i];
    }

    if (maxCurrent > max) {
      max = maxCurrent;
    }
  }

  printf("%d", max);

  return 0;
}
