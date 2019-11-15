#include <stdio.h>
#include <inttypes.h>

float dot_product(float[], float[]);

int main()
{
  float x[] = {1.5, 1.5, 1.5};
  float y[] = {2.5, 2.5, 2.5};
  printf("%10.3f\n", dot_product(x, y));
  return 0;
}