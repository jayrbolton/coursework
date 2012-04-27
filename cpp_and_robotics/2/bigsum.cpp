// j bolton
// Project Euler, problem ?

#include <vector>
#include <fstream>
#include <string>
#include <sstream>
#include <iostream>
#include <cmath>
#include <cstdlib>
using namespace std;

//read each 50-digit number into a list -- cin will separate by linebreaks
vector<string> readNumbers(string filename) {
	ifstream infile(filename.c_str());
	vector<string> l;
	string tmp;
	for(int i = 0; i < 100; i++) {
		getline(infile, tmp);
		l.push_back(tmp);
	}
	return l;
}

void sumDigits(vector<string> l) {
	string s;
	int sum = 0;
	int test = 0;
	for (int j = 49; j >= 4; j-=5) {
		for (int i = 0; i < 100; i++) {
			sum += atoi((l[i].substr(j-4, 5)).c_str());
		
		}
		cout << sum << endl;
		stringstream out;
		out << sum;
		s = out.str();
		cout << s << endl;
		if (s.length() < 6) sum = 0;
		else sum = atoi(s.substr(0, s.length()-5).c_str());
		cout << sum << endl;
	}
}

int main() {
	vector<string> l = readNumbers("50-digit-numbers.txt");
	sumDigits(l);
	return 0;

}
/*Work out the first ten digits of the sum of one-hundred 50-digit numbers.*/
/*See file '50-digit-numbers.txt' for the list of numbers*/
