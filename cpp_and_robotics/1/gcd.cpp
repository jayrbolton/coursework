//J Bolton
//greatest common divisor
#include <iostream>
using namespace std;

int gcd(int m, int n) {
    return (n == 0) ? m : gcd(n, m % n);
}

int main() {
	int n, m;
	cout << "Enter two numbers: " << endl;
	cin >> m;
	cin >> n;
    cout << "GCD is: " << gcd(m, n) << endl;
}
