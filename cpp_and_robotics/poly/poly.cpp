//jbolton
//polygon drawing with opengl

#include <iostream>
#include <vector>
#include <GL/gl.h>
#include <GL/glu.h>
#include <GL/glut.h>
using namespace std;

struct point {
	double x, y;

	void print() const {
		cout << "(" << x << "," << y << ")";
	}

	istream& read(istream& in) {
		in >> x; in >> y;
		return in;
	}
};

struct polygon {
	vector<point> allPoints;

	//print the list of points non-visually
	void print() const {
		for (int i = 0; i < allPoints.size(); i++)
			allPoints[i].print();
	}
	
	istream& read(istream& in) {
		point p;
		while (p.read(in)) 
			allPoints.push_back(p);
		return in;
	}

	// generate an opengl polygon
	void draw() const {
		glClear(GL_COLOR_BUFFER_BIT);
		glBegin(GL_POLYGON);
		for (int i = 0; i < allPoints.size(); i++) {
			glVertex2f(allPoints[i].x, allPoints[i].y);
		}
		glEnd();
	}
};

void display(void) {
		glFlush();
}

int main(int argc, char** argv) {
	glutInit(&argc, argv);
	glutInitDisplayMode(GLUT_RGBA);
	glutInitWindowSize(800, 600);
	glutInitWindowPosition(0, 0);
	cout << 
		"Enter a series of points separated by spaces and/or linebreaks. <Ctrl>D when done."
		<< endl;
	cout << "Each pair of numbers you enter constitute a point" << endl;
	cout << "Use decimal numbers between 0 and 1 (eg. 0.65)" << endl;
	polygon poly;
	poly.read(cin);
	cout << endl << "Your polygon: " << endl;
	poly.print();
	cout << endl;
	glutCreateWindow("Polygon");
	poly.draw();
	glutDisplayFunc(display);
	glutMainLoop();
	return 0;
}
