/*
 * =====================================================================================
 *
 *         Author:  Jay Bolton
 *
 *          Class: Data Structures and Algorithms 2011-2012
 *        Quarter: 2 (winter)
 *       Filename: processor.cpp
 *
 *    Description: This file contains the implementation for the Processor object.
 *
 *        Created: 02/22/2012 11:34:43 AM
 *       Revision: none
 *       Compiler: gcc
 *
 * =====================================================================================
 */


#include <iostream>
#include <string>
#include <sstream>
#include "processor.h"
using namespace std;

string Processor::to_string() const {
	stringstream s;
	s << "{" << name << ", ";
	s << "p=";
	if(current_process != NULL) s << current_process->to_string();
	else s << "empty";
	s << "}";
	return s.str();
}

Process * Processor::get_proc() const {
	if(!current_process) return 0;
	return current_process;
}

void Processor::add_proc(Process & p) { current_process = & p; }
void Processor::remove_proc() { current_process = NULL; }

bool operator<(const Processor & p1, const Processor & p2) {
	int x, y;
	if(!p1.get_proc()) x = 0;
	else x = p1.get_proc()->get_ticks();
	if(!p2.get_proc()) y = 0;
	else y = p2.get_proc()->get_ticks();
	return x < y;
}

ostream & operator<<(ostream & out, const Processor & p) {
	return out << p.to_string();
}
