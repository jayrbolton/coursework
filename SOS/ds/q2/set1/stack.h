/*
 * =====================================================================================
 *
 *        Author: Jay Bolton
 *
 *        Description: A stack class using an underlying linked list
 *        Class: Algorithms and Data Structures
 *        Quarter: 2 (winter)
 *        Homework set 1
 *
 * =====================================================================================
 */

#ifndef Stack_H
#define Stack_H

#include "list.h"
#include <iostream>

template <class T>
class Stack {

	public:

	// Constructors
	Stack() { }
	Stack(const List<T> & l) {contents = l;}

	// Method interface
	Stack push(const T & x) {contents.push_front(x); return *this;}
	T * pop() {return contents.pop_front();}

	// Operators
	friend std::ostream & operator<<(std::ostream & out, const Stack<T> & s) {
		return out << s.get_contents();
	}

	List<T> get_contents() const {return contents;}

	private:

	List<T> contents;

};

#endif
