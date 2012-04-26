/*
 * =====================================================================================
 *
 *         Author: Jay Bolton
 *
 *          Class: Data Structures and Algorithms 2011-2012
 *        Quarter: 2 (winter)
 *       Filename: controller.cpp
 *
 *    Description: This is the program's controller module that handles user
 *                 input and calls the interfaces on all our different objects.
 *
 *                 It's mostly the main event/program loop and a large command switch.
 *
 *        Created: 02/22/2012 11:34:43 AM
 *       Revision: none
 *       Compiler: gcc
 *
 * =====================================================================================
 */

#include <cstdlib> // for atoi
#include <iostream>
#include <string>
#include <regex.h>
#include "cluster_state.h"
#include "process.h"

using namespace std;

void print_intro() {
	cout << endl << "processes running" << endl;
	cout << "    their computations turning--" << endl;
	cout << "        they wind and unwind" << endl << endl;

	cout << "C++ Processor Scheduling Simulator" << endl;
	cout << "Jay R Bolton; Algorithms and Data Structures, 2011-2012; The Evergreen State College" << endl;
	cout << "Type 'help' or '?' for help and 'exit' or 'x' to exit." << endl;
}

void print_help() {
	cout << "This command line interface allows you to play with the processors and schedulers interactively." << endl;
	cout << "Whatever you do, do not enter ***" << endl;
	cout << "Commands:" << endl;
	cout << "  x, q, ^C, ^D, quit, or exit        exit the program" << endl;
	cout << "  ?, h, or help                      see this text" << endl;
	cout << "  t or tick                          tick the clock forward once" << endl;
	cout << "  tick n or t n                      tick the clock forward n times" << endl;
	cout << "  reset or r                         reset the state of the cluster" << endl;
	cout << "  view or v                          view the state of the cluster" << endl;
	cout << "  job or j                           create a new job with name" << endl;
	cout << "  proc or p                          create a new processor with name" << endl;
}

int command_switch(string cmd, ClusterState & state) {
	if (cmd == "exit" || cmd == "x" || cmd == "q" || cmd == "quit") {
		return 0; // break out of event loop
	}
	else if (cmd == "help" || cmd == "?") {
		print_help();
	}
	else if (cmd == "tick" || cmd == "t") {
		// Alter the ClusterState object to move forward a tick
		state.tick();
		cout << "Ticked once. New state:" << endl;
		cout << state.to_string() << endl;
	}
	else if (cmd == "reset" || cmd == "r") {
		cout << "Are you sure you wish to reset the state of the cluster? (y/n) ";
		getline(cin, cmd);
		if (cmd == "y" || cmd == "yes" || cmd == "Y") {
			state.reset();
			cout << "Cluster state reset." << endl;
		}
	}
	else if (cmd == "view" || cmd == "v") {
		cout << state.to_string() << endl;
	}
	else if (cmd == "job" || cmd == "j") {
		cout << "Name of job: ";
		getline(cin,cmd);
		string name = cmd;
		cout << "Number of ticks to complete: ";
		getline(cin,cmd);
		int n_ticks = atoi(cmd.c_str());
		cout << "Number of processors required: ";
		getline(cin,cmd);
		int n_procs = atoi(cmd.c_str());
		Process p = Process(name, n_ticks, n_procs);
		cout << p.to_string() << endl;
		state.add_process(p);
		cout << "Created/queued process (enter 'v' to view the new state)..." << endl;
	}
	else if (cmd == "proc" || cmd == "p") {
		cout << "Name of processor: ";
		getline(cin, cmd);
		string name = cmd;
		Processor p = Processor(name);
		state.add_processor(p);
		cout << "Created processor (enter 'v' to view the new state)..." << endl;
	}
	else if (cmd == "***") {
		cout << "               ," << endl;
		cout << "         (`.  : \\               __..----..__" << endl;
		cout << "          `.`.| |:          _,-':::''' '  `:`-._" << endl;
		cout << "            `.:\\||       _,':::::'         `::::`-." << endl;
		cout << "              \\\\`|    _,':::::::'     `:.     `':::`." << endl;
		cout << "               ;` `-''  `::::::.                  `::\\ " << endl;
		cout << "            ,-'      .::'  `:::::.         `::..    `:\\ " << endl;
		cout << "          ,' /_) -.            `::.           `:.     |" << endl;
		cout << "        ,'.:     `    `:.        `:.     .::.          \\ " << endl;
		cout << "   __,-'   ___,..-''-.  `:.        `.   /::::.         |" << endl;
		cout << "  |):'_,--'           `.    `::..       |::::::.      ::\\ " << endl;
		cout << "   `-'                 |`--.:_::::|_____\\::::::::.__  ::|" << endl;
		cout << "                       |   _/|::::|      \\::::::|::/\\  :|" << endl;
		cout << "                       /:./  |:::/        \\__:::):/  \\  :\\ " << endl;
		cout << "                     ,'::'  /:::|        ,'::::/_/    `. ``-.__" << endl;
		cout << "                    ''''   (//|/\\      ,';':,-'         `-.__  `'--..__" << endl;
		cout << "                                                             `''---::::' " << endl;
	}
	// XXX note: regexing this command probably isn't necessary -
	// we couldejust do 't' or 'tick' and then prompt for how many.
	// that would certainly simplify the code below
	else if (!cmd.compare(0,5,"tick ") || !cmd.compare(0,2,"t ")) {
		// Initialize all our regular expression tools
		regex_t tick_regex;
		size_t nmatch = 3;
		regmatch_t pmatch[nmatch];
		int reti = regcomp(&tick_regex, "^(tick|t) ([0-9]+) *$", REG_EXTENDED);
		reti = regexec(&tick_regex, cmd.c_str(), nmatch, pmatch, 0);
		if (reti == 0) { // reti is 0 if there's a match
      unsigned int start = pmatch[2].rm_so;
			unsigned int end = pmatch[2].rm_eo - start;
			if(start > 0 && (start+end) > start && (start+end) <= cmd.size()) {
				int n = atoi(cmd.substr(start, end).c_str());
				state.tick(n);
				cout << "Ticked " << n << " times." << endl;
			} else {
				cout << "Invalid command -- you must either enter 'tick' or 'tick n' where n is an integer" << endl;
			}
		}
		else {
		 char msgbuf[256];
		 regerror(reti, &tick_regex, msgbuf, sizeof(msgbuf));
		 cout << "Regex match failed:" << msgbuf << endl;
		}
		regfree(&tick_regex);
	}
	return 1;
}

void event_loop() {
	string cmd; int cmd_code = 1;
	ClusterState state = ClusterState();
	while(cmd_code) {
		cout << "> "; getline(cin,cmd);
		if (cin.eof() == 1) cmd_code = 0;
		else cmd_code = command_switch(cmd, state);
	}
}

int main() {
	print_intro();
	event_loop();
	return 0;
}
