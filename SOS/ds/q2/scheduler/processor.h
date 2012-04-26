/*
 * =====================================================================================
 *
 *         Author:  Jay Bolton
 *
 *          Class: Data Structures and Algorithms 2011-2012
 *        Quarter: 2 (winter)
 *       Filename: processor.h
 *
 *    Description: This file contains the Processor object, whose job it is to
 *                 decrement the ticks of the Process objects.
 *
 *                 This file only contains the templating for the object. All
 *                 the implementation is found in processor.cpp
 *
 *        Created: 02/22/2012 11:34:43 AM
 *       Revision: none
 *       Compiler: gcc
 *
 * =====================================================================================
 */

#ifndef processor_h
#define processor_h

#include <iostream>
#include <string>
#include <sstream>
#include "process.h"

class Processor {

	public:

	Processor() : name("unnamed processor"), current_process(NULL) {}

	Processor(string n) : name(n), current_process(NULL) {}

	Processor(string n, Process * p) : name(n), current_process(p) {}

//Processor(Process * p) : name("unnamed processor"), current_process(p) {}

	string to_string() const;

	Process * get_proc() const;

	void add_proc(Process & p);
	void remove_proc();

	friend ostream & operator<<(ostream & out, Processor & p);

	private:

	string name;
	Process * current_process;

};

bool operator<(const Processor & p1, const Processor & p2);
ostream & operator<<(ostream & out, const Processor & p);

#endif
