/*
 * =====================================================================================
 *
 *         Author:  Jay Bolton
 *
 *          Class: Data Structures and Algorithms 2011-2012
 *        Quarter: 2 (winter)
 *       Filename: binary_heap.h
 *
 *    Description: A min binary heap using our own elements data structure
 *
 *        Created: 02/22/2012 11:34:43 AM
 *       Revision: none
 *       Compiler: gcc
 *
 * =====================================================================================
 */

#ifndef Binary_Heap_H
#define Binary_Heap_H

#include <vector>

// for to_string and <<
#include <string>
#include <iostream>
#include <sstream>

template <class T>
class BinaryHeap {

  public:

	BinaryHeap(int capacity = 100) {
		current_size = 0;
		elements.resize(100);
	}

	BinaryHeap(const std::vector<T> & items) {
		int is = items.size();
		elements.resize(is + 10);
		current_size = is;
		for (int i = 0; i < items.size(); i++)
			elements[i+1] = items[i];
		build_heap();
	}

	BinaryHeap(const BinaryHeap & rhs) { }

	std::string to_string() const {
		if(current_size == 0) return "[]";
		std::stringstream s;
		s << "[";
		for (int i = 1; i < current_size; i++)
			s << elements[i] << ", ";
		s << elements[current_size];
		s << "]";
		return s.str();
	}

	bool empty() const { return current_size == 0; }

	T * top() {
		if(empty()) return NULL;
		return & elements[1];
	}

	const T & find_min() const {
		if (current_size == 0) return 0;
		return elements[1];
	}

	void insert(const T & x) {
		int n_size = elements.size();
		if(current_size >= n_size) elements.resize((elements.size()) * 2);
		int hole = ++current_size;
		for(; hole > 1 && x < elements[hole / 2]; hole /= 2) {
			elements[hole] = elements[hole / 2];
		}
		elements[hole] = x;
	}

	void delete_min() {
		if(empty()) return 0;
		T * elem = & elements[1];
		elements[1] = elements[current_size]; // put last elem in head
		elements.erase(elements.end()); // remove last elem
		delete elem; --current_size;
		build_heap();
	}
	
	// Remove minimum element without deleting it from memory
	// XXX redundant code
	T * remove_min() {
		if(empty()) return NULL;
		T * elem = new T(elements[1]); // XXX eugh
		elements[1] = elements[current_size]; // put last elem in head
		elements.erase(elements.end()); // remove last elem
		--current_size;
		build_heap();
		return elem;
	}

	void make_empty() {
		if(empty()) return;
		elements.clear();
		elements.resize(100); // XXX bleh?
		current_size = 0;
	}

	const BinaryHeap<T> & operator= (const BinaryHeap<T> & rhs) {
		if(this == &rhs) return *this;
		elements.clear();
		current_size = rhs.elements.size();
		for (unsigned int i = 0; i < rhs.elements.size(); i++)
			elements[i] = rhs.elements[i];
		return *this;
	}

	friend std::ostream & operator<<(std::ostream & out, const BinaryHeap<T> & bh) {
		return out << bh.to_string();
	}


	private:

	int current_size; // XXX we probably don't actually need to store this
	std::vector<T> elements;

	/*
	 * Starting with the parents of the leaves, call percolate_down until we hit
	 * the root.
	 */
	void build_heap() {
		for(int i = current_size / 2; i > 0; i--)
			percolate_down(i);
	}

	/*
	 * Test that we satisfy the heap properties, swapping up the tree if not.
	 */
	void percolate_down(int hole) {
		int child;
		T tmp = elements[hole];
		for(; hole * 2 <= current_size; hole = child) {
			child = hole * 2;
			if (child != current_size && elements[child + 1] < elements[child])
				child++;
			if (elements[child] < tmp)
				elements[hole] = elements[child];
			else break;
		}
		elements[hole] = tmp;

	}

}; // end class BinaryHeap

#endif
