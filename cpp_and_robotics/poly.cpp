//jbolton
//polygon drawing

#include <iostream>
using namespace std;

struct point {
	double x, y;

	void print() const {
		cout << "(" << x << "," << y << ")";
	}

	istream& readPoint(istream& in) {
		in >> x; in >> y;
		return in;
	}
};

struct polygon {
	vector<point> allPoints;

	istream& read_poly(istream& in) {
		point p;
		while (p.readPoint(in)) {
			allPoints.push_back(p);
		}
		return in;
	}
}

int main() {

	//polygon poly;
	//poly.read_poly();
	point p;
	p.readPoint(cin);
	p.print();
//	poly.print_poly();
	
	return 0;
}
