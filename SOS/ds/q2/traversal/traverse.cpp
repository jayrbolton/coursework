/*
 * File traversal and sorting
 * Jay R Bolton
 * Data Structures, Quarter 2 (winter)
 * Homework 4
 *
 * Traverse deeper! Inception.
 *
 */

#include <iostream>
#include <string>
#include <dirent.h>
#include <errno.h>
#include <stdlib.h>
#include <sys/stat.h>
#include <sys/types.h>
#include "list.h"
#include "stack.h"
#include "queue.h"

using namespace std;

/**** File Utility Functions ****/

bool is_dir(string path) {
	struct stat stats;
	return stat (path.c_str(), &stats) == 0 && S_ISDIR (stats.st_mode);
}

/* Compare two files
 * Return values:
 *   -1: <
 *    0: ==
 *    1: > 
 *
 * params:
 *   "mtime": last modification time
 *   "size": filesize (returns 4096 for directories)
 */
/* At first, I had a single function, "compare_file" that had a parameter for
 * the field you wanted to compare to reduce redundancy. But with the mergesort
 * function where you pass the compare function, it's simpler to have two
 * different compare functions to pass. Otherwise I would have had to pass the
 * field into mergesort (and of course there's no way to partially apply
 * compare_file to a parameter and then pass it to mergesort).
 */
int compare_size(string left, string right) {
	struct stat lstat, rstat;
	stat (left.c_str(), &lstat); stat (right.c_str(), &rstat);
	if(lstat.st_size < rstat.st_size) return -1;
	if(lstat.st_size > rstat.st_size) return 1;
	else return 0;
}
int compare_time(string left, string right) {
	struct stat lstat, rstat;
	stat (left.c_str(), &lstat); stat (right.c_str(), &rstat);
	if(lstat.st_mtime < rstat.st_mtime) return -1;
	if(lstat.st_mtime > rstat.st_mtime) return 1;
	else return 0;
}

void cat() {
	cout << endl << "A cat: " << endl;
	cout << "         /\\_/\\ " << endl;
	cout << "    ____/ o o \\ " << endl;
	cout << "  /~____  =ø= /" << endl;
	cout << " (______)__m_m)" << endl;
}


/* Since we're working with linked lists, I'll do merge sort.
 * It's a generic version so you can pass your own comparator.
 */
template <class T>
List<T> mergesort(List<T> ls, int (* compare)(T, T)) {
	if(ls.get_size() <= 1) return ls;
	List<T> left, right;
	typename List<T>::iterator it = ls.begin();
	int i, middle = ls.get_size() / 2;
	for(i = 0; i < middle; ++i){
		left.push_back(*it); ++it;
	}
	for(i = middle; i < ls.get_size(); ++i){
		right.push_back(*it); ++it;
	}
	left = mergesort(left,compare);
	right = mergesort(right,compare);
	return merge(left,right,compare);
}

template <class T>
List<T> merge(List<T> left, List<T> right, int (* compare)(T,T)) {
	List<T> result; 
	int cmp_val;
	while(left.get_size() > 0  || right.get_size() > 0) {
		if(left.get_size() > 0 && right.get_size() > 0) {
			cmp_val = compare(left.front(), right.front()); 
			if(cmp_val <= -0) { // left <= right
				result.push_back(left.front());
				left.remove(left.begin());
			} else {
				result.push_back(right.front());
				right.remove(right.begin());
			}
		}
		else if (left.get_size() > 0) {
			result.push_back(left.front());
			left.remove(left.begin());
		}
		else if (right.get_size() > 0) {
			result.push_back(right.front());
			right.remove(right.begin());
		}
	} // end while
	return result;
}

/*
 * Traverse the directory structure to return a list of all pathnames within.
 *
 * DS should be either a queue or a stack and must implement push and pop. This
 * way, we can do breadth-first with a queue and depth with a stack using the
 * same function.
 *
 * Without recursion it's tricky to keep track of the fullpath, since dirent
 * doesn't do it at all as far as I can see. I ended up having a parallel stack
 * or queue that contained the path mapping over to our working stack or queue.
 */
template <class DS>
List<string> traverse(string path, DS container) {
	List<string> result = List<string>();    // store our result.
	DS fqpaths = DS();   // keep track of current fully qualified path.

	if (!is_dir(path)) {
		cout << "Not a directory: " << path << endl;
		exit(1);
	}

	container.push(path);
	DIR * pdir = NULL;
	struct dirent * pent = NULL;
	string file;

	while(!container.empty()) {
		// push the full path to our result list
		if(fqpaths.empty()) result.push_back(*container.pop());
		else result.push_back(*fqpaths.pop() + "/" + *container.pop());
		path = result.back();

		if(!is_dir(path)); // do nothing, continue the loop
		else { // otherwise traverse the children
			pdir = opendir(path.c_str());
			if(pdir == NULL) {
				cout << "Error opening directory: " << result.back() << endl;
				exit(1);
			}

			while((pent = readdir(pdir))) { // push contents of path onto stack
				if(pent == NULL) {
					cout << "Error reading dir " << endl;
					exit(3);
				}
				file = pent->d_name;
				if(file != "." && file != "..") {
					fqpaths.push(path); // push our fully-qualified path
					container.push(file); // and push our actual file
				}
			} // end while((pent = readdir(pdir)))
		} // end else 
	} // end while(!container.empty())
	closedir(pdir);
	return result;
} // end traverse()


void prompt() {
	string dir, meth;
	cout << endl << "layers of inodes" << endl;
	cout << "  labyrinth directories --" << endl;
	cout << "    let us guide your way" << endl << endl;
	cout << "Unix Directory Traverser" << endl;
	cout << "Jay R Bolton - Data Structures and Algorithms, 2012 - The Evergreen State College" << endl;
	cout << "Choose your directory to traverse: ";
	getline(cin,dir);

	List<string> l = traverse(dir,Stack<string>());
	cout << endl << "Depth first:" << endl << l << endl;
	cout << endl << "Breadth first:" << endl << traverse(dir,Queue<string>()) << endl;
	cout << endl << "Sorted by time:" << endl << mergesort(l,compare_time) << endl;
	cout << endl << "Sorted by size:" << endl << mergesort(l,compare_size) << endl;

	cat();
}

int main() { prompt(); return 0; }
