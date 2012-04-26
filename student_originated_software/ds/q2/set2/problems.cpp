/* J Bolton
 */

#include <vector>
#include "BinaryHeap.h"
#include "LeftistHeap.h"

/*
 * Problem 6.2. Your answer should show the resulting binary heap after each insertion.

As an indentation tree..
We'll do a min heap
Insert 10, 12, 1, 14, 6, 5, 8, 15, 3, 9, 7, 4, 11, 13, and 2

10

10 
 12

1               (1 inserts below 12, sibling of 10. it then percolates up to root)
 12
 10

1
 12
  14
 10

1
 6 
  14
  12	
 10

1
 6 
  14
  12	
 5
  10

Insert 10, 12, 1, 14, 6, 5, 8, 15, 3, 9, 7, 4, 11, 13, and 2

1
 6 
  14
  12	
 5
  10
	8

1
 6 
  15
	 14
  12
 5
  10
	8

1
 6 
  15
	 3
	 14
  12
 5
  10
	8

1
 3 
  6
	 15
	 14
  7
   12
	 9
 2
  4
	 10
	 11
	5
	 13
	 8
 */

 /*
	* Using insert in a loop correctly creates a binary heap, and appears to be
	* the same tree that I made.
	*/

void prob1() {
	// Insert 10, 12, 1, 14, 6, 5, 8, 15, 3, 9, 7, 4, 11, 13, and 2
	//
	int xs [] = {10,12,1,14,6,5,8,15,3,9,7,4,11,13,2};
	BinaryHeap<int> h (15);
	for (int i = 0; i < 15; ++i) h.insert(xs[i]);
	cout << "Problem 1 -------------" << endl;
	h.printArray();
}


/*
 * Apply the buildheap function to the starting array:
 * [10, 5, 2, 3, 7, 8, 4, 9, 1].
 */

 /*
	* output of prob2() is:
	* array[0] = 0, array[1] = 1, array[2] = 3, array[3] = 2, array[4] = 12, array[5] = 6, array[6] = 4, array[7] = 8, array[8] = 15, array[9] = 14, array[10] = 9, array[11] = 7, array[12] = 5, array[13] = 11, array[14] = 13, array[15] = 10,
	*
	* Which is a correct binary heap, but not the same as what I did.
	*
	* It inserts backwards, starting at the end of the vector. Tha'ts the only difference.
	*
	* I am not sure why. In the constructor it loops through items starting at the first.
	*
	* Oh wait, I see. It is in buildHeap(). It loops down from the right of the array and percolates each up.
	*/

void prob2() {
	int xs [] = {10,12,1,14,6,5,8,15,3,9,7,4,11,13,2};
	vector<int> v (xs, xs + sizeof(xs) / sizeof(int));
	BinaryHeap<int> h (v);
	cout << "Problem 2 -------------" << endl;
	h.printArray();
}

/*
 * For the following heap:
 * [10, 5, 2, 3, 7, 8, 4, 9, 1].
 * show the heap that results after performing DeleteMin.
 */

void prob3() {
	int xs [] = {10,5,2,3,7,8,4,9,1};
	vector<int> v (xs, xs + sizeof(xs) / sizeof(int));
	BinaryHeap<int> h (v);
	h.deleteMin();
	cout << "Problem 3 -------------" << endl;
	h.printArray();
}

/*
 * We'll define the leftist queue initialization as follows:
  * Start with an array of elements to be put in the leftist queue: theElements.
  * allocate a queue to hold binaryTreeNodes (as defined previously in the text book): q
  * Initialize a qeuue of trees: For each element in theElments, create a tree with one node each and push it onto q
  * Repeatedly meld from the queue: while there are 2 or more trees on the q
   * Pop 2 trees, t1 and t2,
   * meld t1 and t2: t3
   * enqueue t3 onto q
 * The initial leftist queue is the resulting single tree on the queue.
 * Using this definition of leftist queue initialization:
  * Draw the max leftist tree created by the initialization from the array:
   * [-, 3,5,6,7,20,8,2,9,12,15,30,17]
  * Insert the elements 10, 18, 11, and 4 (in this order) using the insert
    algorithmm specified in the slides and the code from ch 6 (on the web page).
    Show the max leftist tree following each insert.
  * Perform three remove max operations on the resulting tree. Show the leftist tree after each remove.
 */

void prob4() {

	cout << "Problem 4 -------------" << endl;

	int xs [] = {3,5,6,7,20,8,2,9,12,15,30,17};
	vector<int> v (xs, xs + sizeof(xs) / sizeof(int));

	LeftistHeap<int> lh (v);
	lh.printTree();


	lh.insert(10);
	lh.insert(18);
	lh.insert(11);
	lh.insert(4);
	lh.printTree();
}



int main() {
	prob1();
	prob2();
	prob3();
	prob4();
}
