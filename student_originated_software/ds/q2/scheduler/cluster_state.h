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

#ifndef ClusterState_H
#define ClusterState_H

#include <string>
#include <vector>
#include "lib/binary_heap.h"
#include "lib/list.h"
#include "process.h"
#include "processor.h"
using namespace std;

class ClusterState {

	public:

	// Constructor
	ClusterState() : ticks(0) { }

	void tick();
	void tick(int n);
	void reset();

	string to_string() const;

	void add_process(Process p);
	void add_processor(Processor p);

	friend ostream & operator<<(ostream & out, const ClusterState & s);

	private:

	BinaryHeap<Process> waiting;
	List<Processor> running;
	List<Process> done;
	List<Processor> free;

	int ticks;

}; // end class ClusterState

#endif
