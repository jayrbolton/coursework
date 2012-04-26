/*
 * Jay Bolton
 * A minimal stack implementation using a large list library.
 * Algorithms and Data Structures, Quarter 2 (winter)
 * Component: File traversal project
 */

#ifndef Stack_H
#define Stack_H

#include <string>
#include <sstream>
#include <iostream>
#include "list.h"

template <class T>
class Stack {

	private:

	List<T> contents;

	public:

	// Constructor
	Stack() { contents = List<T>(); }

	// Destructor
	~Stack() {
		contents.clear();
	}

	Stack<T> push(const T & x) {
		contents.push_front(x);
		return *this;
	}

	T * pop() { return contents.pop_front(); }

	const T & peek() const { return contents.front(); }

	bool empty() { return contents.empty(); }

	List<T> get_contents() { return contents; }

}; // end class Stack

#endif
