/*
 * J Bolton
 * Algorithms and Data Structures
 * Quarter 2 (winter)
 * A vector class for quicksort (allowing efficient indexing)
 * Component: quicksort comparisons
 *
 * I sorta wrote this all in one go on the fly so some of it may not work.
 */

#ifndef Vector_H
#define Vector_H

#include <stdlib.h>
#include <sstream>
#include <string>
#include <iostream>
using namespace std;

template <class T>
class Vector {

	private:

	int size, cap;
	T * elements;

	public:

	Vector() { init(100); }
	Vector(int cap) { init(cap); }
	Vector(T * elems, int size) {
		elements = elems; cap = size; this->size = size;
	}
	~Vector() { delete elements; }

	void init(int cap) {
		this->cap = cap;
		size = 0;
		elements = new T[cap];
	}

	const Vector & operator=(const Vector & rhs) {
		if(this == &rhs) return *this;
		delete elements;
		init(rhs.get_cap());
		for(int i = 0; i < size; ++i)
			elements[i] = rhs.elements[i];
		return *this;
	}

	T * index(int i) const {
		if(i >= size) return NULL;
		return & elements[i];
	}

	const Vector & cons(const T & x) {
		if(size >= cap) {
			cap = cap*2;
			T * doubled = new T[cap];
			for(int i = 0; i < size; ++i)
				doubled[i] = elements[i];
			delete elements;
			elements = doubled;
		}
		elements[size++] = x;
		return *this;
	}

	int get_size() const {return size;}
	int get_cap() const {return cap;}
	T * get_elements() const {return elements;}

	void swap(int x, int y) {
		T tmp = elements[x];
		elements[x] = elements[y];
		elements[y] = tmp;
	}

	int partition(int left, int right, int piv) {
		T piv_val = elements[piv];
		swap(piv,right);
		int split = left;
		for(int i = left; i < right; ++i)
			if (*index(i) < piv_val) swap(i, split++);
		swap(split, right);
		return split;
	}

	void quicksort(int (* choose_piv)(const Vector<T> &, int l, int r)) {
		quicksort_recur(0, size-1, choose_piv);
	}

	void quicksort_recur(int left, int right, int (* choose_piv)(const Vector<T> &, int l, int r)) {
		if (left < right) {
			int piv = choose_piv(*this, left, right), index = partition(left, right, piv);
			quicksort_recur(left, index-1, choose_piv);  // all lt piv
			quicksort_recur(index+1, right, choose_piv); // all gt piv
		}
	}

	string to_string() {
		if(size == 0) return "{}";
		stringstream s; s << "{";
		for(int i = 0; i < size; ++i) s << *index(i) << ", ";
		s << "}"; return s.str();
	}

};
#endif
