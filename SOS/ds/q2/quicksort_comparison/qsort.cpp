/*
 * J Bolton
 * Algorithms and Data Structures
 * Quarter 2 (winter)
 * Quicksort comparison of pivot selection strategy.
 *
 */

#include <iostream>
#include <stdlib.h>
#include <time.h>
#include <string>
#include "vector.h"
using namespace std;

template <class T>
int pivot_first(const Vector<T> & xs, int l, int r) { return l; }
template <class T>
int pivot_med(const Vector<T> & xs, int l, int r) {
	return med3(*xs.index(l), *xs.index((r+l)/2), *xs.index(r));
}

template <class T>
int pivot_med_rand(const Vector<T> & xs, int l, int r) {
	return med3(*xs.index(rand() % (r-l)), *xs.index(rand() % (r-l)), *xs.index(rand() % (r-l)));
}

int med3(int a, int b, int c) {
	return (a <= b) ? ((b <= c) ? b : ((a < c) ? c : a)) 
		: ((a <= c) ? a : ((b < c) ? c : b)); //hehehehe
}

timespec diffsec(timespec t1, timespec t2) {
	timespec tmp;
	if ((t2.tv_nsec-t1.tv_nsec)<0) {
		tmp.tv_sec = t2.tv_sec - t1.tv_sec-1;
		tmp.tv_nsec = 1000000000 + t2.tv_nsec - t1.tv_nsec;
	} else {
		tmp.tv_sec = t2.tv_sec - t1.tv_sec;
		tmp.tv_nsec = t2.tv_nsec - t1.tv_nsec;
	}
	return tmp;
}

void print_tests(string name, int (* choose_piv)(const Vector<int> &, int l, int r)) {
	timespec before, after, diff;
	Vector<int> n_10_2 = Vector<int>(); // n = 10^2
	Vector<int> n_10_3 = Vector<int>(); // n = 10^3
	Vector<int> n_10_4 = Vector<int>(); // n = 10^4
	Vector<int> n_10_5 = Vector<int>(); // n = 10^5
	for(int i = 0; i < 100; ++i)    n_10_2.cons(rand() % 100);
	for(int i = 0; i < 1000; ++i)   n_10_3.cons(rand() % 1000);
	for(int i = 0; i < 10000; ++i)  n_10_4.cons(rand() % 10000);
	for(int i = 0; i < 100000; ++i) n_10_5.cons(rand() % 100000);
	cout << "  " << name << endl;

	clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &before);
	n_10_2.quicksort(choose_piv);
	clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &after);
	diff = diffsec(before,after);
	cout << "    n = 10^2: " << diff.tv_sec <<":"<< diff.tv_nsec <<endl;
	clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &before);
	n_10_3.quicksort(choose_piv);
	clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &after);
	diff = diffsec(before,after);
	cout << "    n = 10^3: " << diff.tv_sec <<":"<< diff.tv_nsec <<endl;
	clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &before);
	n_10_4.quicksort(choose_piv);
	clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &after);
	diff = diffsec(before,after);
	cout << "    n = 10^4: " << diff.tv_sec <<":"<< diff.tv_nsec <<endl;
	clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &before);
	n_10_5.quicksort(choose_piv);
	clock_gettime(CLOCK_PROCESS_CPUTIME_ID, &after);
	diff = diffsec(before,after);
	cout << "    n = 10^5: " << diff.tv_sec <<":"<< diff.tv_nsec <<endl;
}

int main() {
	srand(time(NULL)); // initialize random seed
	cout << "Quicksort comparison of pivot selection strategy. Time is Seconds:Nanoseconds" << endl;
	Vector<int> v = Vector<int>();
	v.quicksort(pivot_first);

	print_tests("Pivoting on the first element", pivot_first);
	print_tests("Pivoting on the median of the first, middle, and last elements", pivot_med);
	print_tests("Pivoting on the median of three random elements", pivot_med_rand);

	return 0;
}
