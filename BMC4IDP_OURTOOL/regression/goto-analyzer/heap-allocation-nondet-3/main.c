#include <stdlib.h>

int main()
{
  int *q = malloc(10);
  int r[10];

  int *p = r;
  if(nondet())
    p = q;
}
