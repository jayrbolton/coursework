/*
 * J Bolton
 * Leftist heaps (copied from code provided by sherri, then modified/expanded)
 * Data structures, quarter 2, homework set 2
 */

#include <vector>
#include <iostream>
#include <string>
using namespace std;

template <typename T>
class LeftistHeap {

  public:

	LeftistHeap() : root(NULL) {};
	LeftistHeap(const LeftistHeap & rhs) {
		if(*this == rhs) return;
	}

	LeftistHeap(const vector<T> & xs) {
		LeftistNode * p, * q, * merged;
		vector<LeftistNode *> ms;
		for(int i = 0; i < xs.size(); i++)
			ms.push_back(new LeftistNode(xs[i]));
		cout << "wat" << endl;
		while(ms.size() > 1) {
			cout << "oof" << endl;
			p = ms.back(); ms.pop_back();
			q = ms.back(); ms.pop_back();
			merged = merge(p,q);
			ms.insert(ms.begin(), merged);
		}
			cout << "hi" << endl;
		root = ms.front();
	}

	~LeftistHeap() { delete root; }

  const LeftistHeap & operator= (const LeftistHeap & rhs) {
		if(this == &rhs) return *this;
		makeEmpty();
		// Shallow copy. cuz i'm lazy.
		root = rhs.root;
		return *this;
	}

	void printTree() {
		cout << "Leftist tree:" << endl;
		printIndented(root,1);
	}

	bool isEmpty() const {
		if(root == NULL) return true;
		else return false;
	}

	const T & findMin() const {
		if(isEmpty()) return NULL;
		else return root->element;
	}

	/*
	 * Inserts x; duplicates allowed.
	 */
	void insert(const T & x) {
		root = merge(new LeftistNode(x), root); 
	}

	/*
	 * Remove the minimum item.
	 * Throws UnderflowException if empty.
	 */
	void deleteMin( ) {
		if(isEmpty()) return;
		LeftistNode *oldRoot = root;
		root = merge(root->left, root->right);
		delete oldRoot;
	}
    
	/*
	 * Remove the minimum item and place it in minItem.
	 * Throws UnderflowException if empty.
	 */
	void deleteMin(T & minItem) {
		minItem = findMin();
		deleteMin();
	}

	void makeEmpty() {
		delete root;
		root = NULL;
	}

	/**
	 * Merge rhs into the priority queue.
	 * rhs becomes empty. rhs must be different from this.
	 */
	void merge(LeftistHeap & rhs) {
		if(this == &rhs) return; // Avoid aliasing problems.
		root = merge(root, rhs.root);
		rhs.root = NULL;
	}

  private:

	struct LeftistNode {
		T element;
		LeftistNode *left;
		LeftistNode *right;
		int npl;

		LeftistNode(const T & theElement, LeftistNode *lt = NULL,
		             LeftistNode *rt = NULL, int np = 0) :
			element(theElement), left(lt), right(rt), npl(np) { }

		~LeftistNode() {
			delete left;
			delete right;
		}

	};

	void printIndented(LeftistNode *n, int indents) {
		if (n == NULL) return;
		cout << string(indents, ' ');
		cout << n->element << endl;
		printIndented(n->left,indents+1);
		printIndented(n->right,indents+1);
	}

	LeftistNode * root;

	void swapChildren(LeftistNode *t) {
		LeftistNode * l = t->left; LeftistNode * r = t->right;
		t->left = r; t->right = l;
	}

	void reclaimMemory(LeftistNode *t);
	LeftistNode * clone(LeftistNode *t) const;

	/*
	 * Internal method to merge two roots.
	 * Deals with deviant cases and calls recursive merge1.
	 */
	LeftistNode * merge( LeftistNode *h1, LeftistNode *h2 ) {
		if(h1 == NULL) return h2;
		if(h2 == NULL) return h1;
		if(h1->element < h2->element) return merge1(h1, h2);
		else return merge1(h2, h1);
	}

	/*
	 * Assumes trees are not empty, and h1's root contains smallest item.
	 */
	LeftistNode * merge1(LeftistNode *h1, LeftistNode *h2) {
		if(h1->left == NULL) h1->left = h2; // Single node
		else { // Other fields in h1 already accurate
			h1->right = merge(h1->right, h2);
			if(h1->left->npl < h1->right->npl) swapChildren(h1);
			h1->npl = h1->right->npl + 1;
		}
		return h1;
	}


};
