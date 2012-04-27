// t_while.cpp
// read a list of numbers and compute average

#include <iostream>
#include <string>
#include <cstdlib>

using namespace std;

int main() {
  int n;

  cout << "Enter the numbers to be averaged, ^D to end " << endl;
  
  int count = 0; double sum = 0;
  while(cin >> n) { count++; sum += n; }

  cout << "The average is "  << sum/count << endl;

  return 0;
}
