#include <stdio.h>
#include <inttypes.h>

float horner_polynomial(float, float[], u_int64_t);

int main()
{
  float x = 3.0;
  float y[] = {2.5, 2.5, 2.5};
  u_int64_t degree = 2;
  printf("%10.3f\n", horner_polynomial(x, y, 0));
  printf("%10.3f\n", horner_polynomial(x, y, 1));
  printf("%10.3f\n", horner_polynomial(x, y, 2));
  return 0;
}