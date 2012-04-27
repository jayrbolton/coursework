//j bolton
#include <iostream>
#include <string>
using namespace std;

int minThree (int a, int b, int c) {
	return (a < b && a < c) ? a : (b < c) ? b : c;
}

int main() {
    int a, b, c;
    cout << "Enter three numbers: " << endl;
    cin >> a; cin >> b; cin >> c;
	cout << "Min is: " << minThree(a, b, c)<< endl;
	return 0;
}
