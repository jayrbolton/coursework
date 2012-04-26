/*
 * J Bolton
 * Data Structures and Algorithms
 * Quarter 2 (winter)
 * Homework set 1
 */

#include "stack.h"
#include "list.h"
#include <iostream>
using namespace std;

/*
3.3
Implement the STL find routine that returns the iterator containing the first
occurrence of x in the range that begins at start and extends up to but not
including end. If x is not ffound, end is returned. This is a non-class (global
function) with signature:
template < typename Iterator, typename Object >
iterator find(Iterator start, Iterator end, const Object & x)
*/

template <typename Iterator, typename Object>
Iterator find(Iterator start, Iterator end, const Object & x) {
	for( ; start != end; ++start) if(*start == x) return start;
	--end; return end;
}

// There's a type error when we just 'return --end;' ... something to do with implicit const conversion it seems. Meh.

/*
3.5
Given two sorted lists, L_1 and L_2, write a procedure to compute L_1 U L_2 using only the basic list operations.
*/

// I won't assume our elements are orderable, only equable

template <class T>
List<T> list_union(const List<T> & l1, const List<T> & l2) {
	List<T> result = l1; // O(n)
	for(typename List<T>::const_iterator i = l2.begin(); i != l2.end(); ++i)
		if(!result.has_elem(*i)) result.push_back(*i);
	return result;
}

/*
3.13
Add support for operator-- to the List iterator classes.

*/

/*

see list.h under the iterator and const_iterator classes and the test cases below in main().

		iterator & operator--() {
			const_iterator::current = const_iterator::current->prev;
			return *this;
		}

		iterator operator--(int) {
			iterator & old = *this;
			--(*this);
			return old;
		}

*/

/*
3.14
Looking ahead in an STL iterator requires an application of operator++, which in turn advances the iterator. In some cases looking at the next item in the list, without advancing to it, may be preferable. Write the member function with the declaration:
const_iterator operator+(int k) const;

*/

/*

see list.h under the const_iterator class and the test cases below in main()

		const_iterator & operator+(int k) {
			const_iterator * pos = this;
			for(int i = 0; i < k; i++) pos->current = pos->current->next;
			return *pos;
		}

*/

/*
3.15
Add the splice operation to the List class. The method declaration:
void splice (iterator position, List& lst);
removes all the items from lst, placing them prior to position in List *this , lst and *this must be different lists. Your routine must run in constant time.

*/

/*

See list.h around line 155 for this method.
Also see main() below for a few test cases.

	void splice(iterator pos, List& ls) {
		Node * p = pos.current; size += ls.get_size();
		p->prev->next = ls.head->next; ls.head->next->prev = p->prev;
		ls.tail->prev->next = p; p->prev = ls.tail->prev; ls.init();
	}

Runs in O(1)

*/

/*
3.31
Efficiently implement a stack class using a singly linked list with no header or tail nodes.

see stack.h

*/

int main() {
	// Test data
	List<int> l1 = List<int>();
	for(int i = 0; i < 7; ++i) l1.push_back(i+1);
	List<int> l2 = List<int>();
	for(int i = 0; i < 7; ++i) l2.push_back(i+11);
	List<int> l3 = List<int>();
	for(int i = 0; i < 7; ++i) l3.push_back(i+4);

	cout << "Problem 3.3\n";
	cout << "Test list: " << l1 << endl;
	cout << "Finding 3: " << *find(l1.begin(), l1.end(), 3) << endl;
	cout << "Finding 8: " << *find(l1.begin(), l1.end(), 8) << endl;
	cout << "Finding 6: " << *find(l1.begin(), l1.end(), 6) << endl;
	cout << "Finding 0: " << *find(l1.begin(), l1.end(), 0) << endl << endl;

	cout << "Problem 3.5\n";
	cout << "Test list 1: " << l1 << endl;
	cout << "Test list 2: " << l2 << endl;
	cout << "Unioned list: " << list_union(l1,l2) << endl;
	cout << "Test list 1: " << l1 << endl;
	cout << "Test list 3: " << l3 << endl;
	cout << "Unioned list: " << list_union(l1,l3) << endl << endl;

	cout << "Problem 3.13\n";
	cout << "Test list 1: " << l1 << endl;
	List<int>::iterator i = --(l1.end()); // end() actually returns the null sentinel
	cout << "Iterating from the end: " << *i << endl;
	for (; i != l1.begin(); --i);
	cout << "To the beginning: " << *i << endl;

	cout << "Problem 3.14\n";
	cout << "Test list 1: " << l1 << endl;
	i = l1.begin();
	cout << "Iterator constructed from beginning: " << *i << endl;
	cout << "Iterator + 4: " << *(i+4) << endl << endl;

	cout << "Problem 3.15\n";
	cout << "Test list 1: " << l1 << endl;
	cout << "Test list 2: " << l2 << endl;
	l1.splice((l1.begin()++), l2);
	cout << "List 2 spliced into list 1 before second elem: " << l1 << endl << endl;

	cout << "Problem 3.31\n";
	cout << "Test list 1: " << l1 << endl;
	Stack<int> s = Stack<int>(l1);
	cout << "Turned into a stack: " << s << endl;
	cout << "Pop: " << *s.pop() << endl;
	cout << "Push 999: " << s.push(999) << endl;
	cout << "New stack: " << s << endl;

}
