/*
 * =====================================================================================
 *
 *       Filename:  test.cpp
 *
 *    Description:  tt
 *
 *        Version:  1.0
 *        Created:  02/16/2012 03:09:16 PM
 *       Revision:  none
 *       Compiler:  gcc
 *
 *         Author:  YOUR NAME (), 
 *        Company:  
 *
 * =====================================================================================
 */

#include <vector>
#include "BinaryHeap.h"
#include "MaxLeftistHeap.h"


void test1() {
	cout << "Problem 2 -------------" << endl;

	int xs [] = {4,3,1,15,22,35,12,9,5,6,7,2,10};
	vector<int> v (xs, xs + sizeof(xs) / sizeof(int));

	LeftistHeap<int> lh (v);
	lh.printTree();


	lh.insert(10);
	lh.printTree();
	lh.insert(18);
	lh.printTree();
	lh.insert(11);
	lh.printTree();
	lh.insert(4);
	lh.printTree();

	cout << "Deleting..............." << endl;

	lh.deleteMin();
	lh.printTree();
	lh.deleteMin();
	lh.printTree();
	lh.deleteMin();
	lh.printTree();
}

int main() {
	test1();
}
