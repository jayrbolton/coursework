#include <iostream>
#include <cstdlib>
using namespace std;

void tttInit() {
	bool first;
	cout << "Would you like to go first? (yes/no)" << endl;
	cin >> first;
	cout << "Would you like to be X's or O's? (X/O)" << endl;
}

int main {
	tttInit();
	return 0;
}
