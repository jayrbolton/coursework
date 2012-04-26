/*
 * Jay Bolton
 * A minimal queue implementation using a large list library.
 * Algorithms and Data Structures, Quarter 2 (winter)
 * Component: File traversal project
 */

#ifndef Queue_H
#define Queue_H

#include <string>
#include <sstream>
#include <iostream>
#include "list.h"

template <class T>
class Queue {

	private:

	List<T> contents;

	public:

	// Constructor
	Queue() { contents = List<T>(); }

	// Destructor
	~Queue() {
		contents.clear();
	}

	Queue<T> push(const T & x) {
		contents.push_front(x);
		return *this;
	}

	T * pop() { return contents.pop_back(); }

	const T & peek() const { return contents.back(); }

	bool empty() { return contents.empty(); }

	List<T> get_contents() { return contents; }

}; // end class Queue

#endif
