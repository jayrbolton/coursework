/*
 * =====================================================================================
 *
 *         Author:  Jay Bolton
 *
 *          Class: Data Structures and Algorithms 2011-2012
 *        Quarter: 2 (winter)
 *       Filename: process.h
 *
 *    Description: This file contains the Process object, which contains the
 *                 duration of the process and the number of processors required
 *                 to perform it.
 *
 *                 This file only contains the templating for the object. All
 *                 the implementation is found in process.cpp
 *
 *        Created: 02/22/2012 11:34:43 AM
 *       Revision: none
 *       Compiler: gcc
 *
 * =====================================================================================
 */

#ifndef process_h
#define process_h

#include <string>
#include <sstream>
#include <iostream>
using namespace std;

class Process {

	public:

	Process() : desc("unnamed process"), ticks(1), procs(1) {}

	Process(string d, int t, int ps) : desc(d), ticks(t), procs(ps) {}

	Process(const Process & p) :
		desc(p.get_desc()), ticks(p.get_ticks()), procs(p.get_procs()) {}

	string to_string() const;

	int get_ticks() const;
	int get_procs() const;
	string get_desc() const;
	int tick();

	friend ostream & operator<<(ostream & out, Process & p);

	private:

	string desc;
	int ticks;
	int procs;

}; // end class Process

bool operator<(const Process & p1, const Process & p2);
ostream & operator<<(ostream & out, const Process & p);

#endif
