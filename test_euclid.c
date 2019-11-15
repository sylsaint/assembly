#include <stdio.h>
#include <inttypes.h>

float euclid_distance(float[], float[]);

int main()
{
  float x[] = {1.5, 1.5, 1.5};
  float y[] = {2.5, 2.5, 2.5};
  printf("%10.3f\n", euclid_distance(x, y));
  return 0;
}