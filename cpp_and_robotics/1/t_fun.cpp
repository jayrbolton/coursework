// t_fun.cpp
// write a function to compute factorial

#include <iostream>
#include <string>
#include <cstdlib>
#include <time.h>

using namespace std;

int fact(int n) {
  return (n == 1) ? n : n * fact(n-1);
}


int main() {
  int n;

  cout << "Enter the number for factorial" << endl;
  cin >> n;

  int result = fact(n);
  cout << "fact(" << n << ") is " << result << endl;

  return 0;
}
