//// j bolton
// 28.07.2010 17:36:08
// postfix calculator - week 2
// added error checking and negative numbers

#include <iostream>
#include <string>
#include <stack>
#include <cmath>
#include <cstdlib>
using namespace std;

stack<double> mystack;

void stackOp(char op) {
	//check that the operator is valid
	if (op == '+' | op == '-' | op == '*' | op == '/') {
		double x = mystack.top();
		mystack.pop();
		double y = mystack.top();
		mystack.pop();
		switch(op) {
			case '+':
				mystack.push(y+x);
				break;
			case '-':
				mystack.push(y-x);
				break;
			case '*':
				mystack.push(y*x);
				break;
			case '/':
				mystack.push(y/x);
				break;
		}
	}
	else {
		cout << "Invalid operator: " << op << endl;
	}
	return;
}

int main() {
	string s;
	cout << "Polish Postfix Calculator" << endl;
	cout << "Enter numbers and operators separated by spaces<Ctrl>D when done." << endl;
	cout << "Valid operators: +, -, *, /" << endl;
	while (cin >> s) {
		if (isdigit(s[0]) | (s[0] == '-' && s.length() > 1)) 
			mystack.push(atof(s.c_str()));
		else		
		  stackOp(s[0]);
	if (mystack.size() > 1)
		cout << "Invalid expression." << endl; 
	else cout << endl << "Answer: " << mystack.top() << endl;
	return 0;
}
