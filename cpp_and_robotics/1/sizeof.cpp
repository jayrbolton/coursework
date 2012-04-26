//J Bolton
//use sizeof() to determine how many bytes are in each of the
//primitive data types.
//bool, char, short, int, long, float, double, wchar_t

#include <iostream>
using namespace std;

int main() {
	bool a; char b; short c; int d; long e; float f; double g; wchar_t h;
	cout << "bool: " << sizeof(a) << endl;
	cout << "char: " << sizeof(b) << endl;
	cout << "short: " << sizeof(c) << endl;
	cout << "Int: " << sizeof(d) << endl;
	cout << "long: " << sizeof(e) << endl;
	cout << "float: " << sizeof(f) << endl;
	cout << "double: " << sizeof(g) << endl;
	cout << "wchar_t: " << sizeof(h) << endl;
	return 0;
}
