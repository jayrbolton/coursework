//j bolton
#include <iostream>
#include <string>

using namespace std;

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

int main() {
    printTree();
    return 0;
}
