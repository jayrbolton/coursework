
#include <stdio.h>
#include <math.h>

int main() {
// printf("%i\n\n",six(5));
 int n;
 printf("%i,%i\n\n",five(10),fiveprime(10));
  for (n=2; n<=256; n=n*2)
    printf("(%i,%i)\n",five(n),fiveprime(n));
//  ((6*pow(n-1,5)+ 15*pow(n-1,4) + 10*pow(n-1,3) - n+1 - 10*n*n*n +15*n*n -5*n) / 60));
//        sixprimeprime(i),
//      (3*i*i*i*i-10*i*i*i+9*i*i-2*i)/24);
}

int five(int n) {
  int i, j, k, sum=0;
  for(i=1; i<n; i++)
    for(j=1; j<i*i; j++)
      for(k=0; k<j; k++)
        sum++;
  return sum;
}
//equivalent to:
int fiveprime(int n) {
  return (6*pow(n-1,5)+ 15*pow(n-1,4) + 10*pow(n-1,3) - n+1 - 10*n*n*n +15*n*n -5*n) / 60;
}

int six(int n) {
  int i, j, k, sum=0;
  for(i=1; i<n; i++)
    for(j=1; j<i*i; j++)
      if(j%i == 0)
        for(k=0; k<j; k++)
          sum++;
  return sum;
}
//equivalent to:
int sixprime(int n) {
  int i, j, k, sum=0;
  for(i=1; i<n; i++)
    for(j=1; j<i; j++)
      for( k=0; k<j*i; k++ )
        sum++;
  return sum;
}
//equivalent to:
int sixprimeprime(int n) {
  int i, j, k, sum=0;
  for(i=1; i<n; i++)
    for(j=1; j<i; j++)
      sum += i*j;
  return sum;
}
//equivalent to:
int sixprimeprimeprime(int n) {
  int i, j, k, sum=0;
  for(i=1; i<n; i++)
    sum += (i*i*i-i*i)/2;
  return sum;
}
