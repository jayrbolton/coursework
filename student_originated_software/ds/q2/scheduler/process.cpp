/*
 * =====================================================================================
 *
 *         Author:  Jay Bolton
 *
 *          Class: Data Structures and Algorithms 2011-2012
 *        Quarter: 2 (winter)
 *       Filename: process.cpp
 *
 *    Description: This file contains the implementations of the methods for
 *                 the process object
 *
 *                 This file only contains implementations of the template
 *                 found in process.h
 *
 *        Created: 02/22/2012 11:34:43 AM
 *       Revision: none
 *       Compiler: gcc
 *
 * =====================================================================================
 */

#include "process.h"
#include <string>
#include <sstream>
#include <iostream>
using namespace std;


string Process::to_string() const {
	stringstream s;
	s << "(" << desc << ", ";
	s << "t=" << ticks << ", ";
	s << "p=" << procs << ")";
	return s.str();
}

ostream & operator<<(ostream & out, const Process & p) {
	return out << p.to_string();
}

int    Process::get_ticks() const { return ticks; }
int    Process::get_procs() const { return procs; }
string Process::get_desc()  const { return desc; }

int Process::tick() { return --ticks; }

bool operator<(const Process & p1, const Process & p2) {
	return p1.get_ticks() < p2.get_ticks();
}
