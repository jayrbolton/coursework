/*
 * =====================================================================================
 *
 *         Author:  Jay Bolton
 *
 *          Class: Data Structures and Algorithms 2011-2012
 *        Quarter: 2 (winter)
 *       Filename: cluster_state.h
 *
 *    Description: This object holds the state of the cluster, which includes
 *                 total ticks that have passed, the queue of waiting and
 *                 running processes, the free and used processors.
 *
 *                 This file is only the template. The implementation is in
 *                 cluster_state.cpp
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
#include "cluster_state.h"
#include "lib/binary_heap.h"
#include "lib/list.h"
using namespace std;

void ClusterState::tick() {
	// Move all completed procs to the done list
	List<Processor>::iterator i = running.begin();

	// Loop through our running processors:
	// 1. Check for those whose procs have 0 ticks left
	//  a. If so, then put the job in the done list and put the processor back in free
	//  b. otherwise, tick that process down once
	for(; i != running.end(); ++i) {
		Process * p = (*i).get_proc();
		if(p != NULL) {
			if(p->get_ticks() <= 0) {
				done.push_back(*p);
				(*i).remove_proc();
				free.push_front(*i);
				running.remove(i);
			}
			else p->tick();
		}
	}

	// Pair up waiting processes with free processors
	while(!waiting.empty() && !free.empty() && waiting.top()->get_procs() <= free.get_size()) {
		Process * proc = waiting.remove_min();
		Processor * p;
		for(int i = 0; i < proc->get_procs(); ++i) {
			p = free.pop_front();
			p->add_proc(*proc);
			running.push_back(*p);
		}
	}

	++ticks;
}

void ClusterState::tick(int n) {
	for(int i = 0; i < n; ++i) tick();
}

void ClusterState::add_process(Process p)     { waiting.insert(p); }
void ClusterState::add_processor(Processor p) { free.push_front(p); }

// Reset the entire state of the cluster. Blank everything out.
void ClusterState::reset() {
	ticks = 0;
	waiting.make_empty();
	running.clear();
	free.clear();
	done.clear();
}

string ClusterState::to_string() const {
	stringstream s;
	s << "----------------Cluster State-----------------" << endl;
	s << "Mood: ebullient" << endl;
	s << "Ticked " << ticks << " times." << endl;
	s << "Queued processes: "   << waiting << endl;
	s << "Running processors: " << running << endl;
	s << "Free processors: "    << free << endl;
	s << "Finished processes: " << done << endl;
	return s.str();
}

ostream & operator<<(ostream & out, const ClusterState & s) {
	return out << s.to_string();
}
