#include <iostream>
#include <string>

using namespace std;

//greatest common denominator
int gcd(int m, int n) {
    return (n == 0) ? m : gcd(n, m % n);
}

//print an ascii tree of any width
void printTree() {
    int size;
    cout << "Enter the width of your tree:" << endl;
    cin >> size;
    
    //create top
    int l = size/2;
    for (int i = 1; i <= size; i += 2, l--) {
        cout << string(l, ' ') << string(i, '*') << endl;
    }
    
    //create trunk
    l = size/2;
    for (int i = 1; i < l; i++) {
        cout << string(l, ' ') << '*' << endl;
    }
}

int minOfThree (int a, int b, int c) {
	return (a < b && a < c) ? a : (b < c) ? b : c;
}

int main() {
    cout << gcd(128, 12) << endl;
    printTree();
	cout << minOfThree(128, 12, -1)<< endl;
	initTTT();
}
