/*

J Bolton
Data Structures and Algorithm Analysis in C
Problem set 4

Set 4: Exercise 4.1, 4.2, 4.3, 4.5, 4.8, 4.19, [*4.20], 4.23, 4.28, 4.35, 4.45 

I should've done this one in TeX. For some reason I thought it'd be mostly programming.
*/

/*
4.1
Root = A
Leaves = {GHILMK}
*/

/*
4.2
I'll just do this for node E. 
Parent = B
Children = {IJ}
Sibling = D
Depth = 2
Height = 2
*/

/*
4.3
Depth = 4
*/

/*
4.5
It says show rather than prove, so I'll simply try to be descriptive.

Since we are finding maximum, we can assume the tree is full/complete.
Each level of a complete binary tree has 2^n nodes where n is the level and the
root level is 0.
Each level can be thought of as a digit in a binary number with the root being
rightmost.
The height of a tree is one less than the number of levels.
So our max number of nodes will be a binary number with all ones, whose number
of digits equal the number of levels (height+1) minus one.
Which translates to 2^(h+1)-1

*/

/*
4.8
Prefix:  a*b*c+d-e
Infix:   -**ab+cde
Postfix: ab*cd+*e-
*/

/*
4.19
Non-recursive AVL insert

This probably won't compile. It's all just pseudocode.
*/

/* With the recursive version, our path back up is going to be saved for free.
 * But with iteration, we'll have to save the path.
 * I'll have the linked list save the past as a list nodes.
 * */

AVL insertAVL(AVLType n, AVL node) {
  AVL root = node;
  List path;
  while(node) {
    path = cons(node, path);
    if(n < node->element) node = node->left;
    else if(n > node->element) node = node->right;
    else if(n == node->element) return root;
  }
  node = constructAVL(n); /* construct a node containing n at this null position */
  /* Now we can move back up, testing heights and rotating imbalances */
  while(path) {
    node = path->element;
    current->height = max(height(node->left) - height(node->right))+1;
    /* Where height of NULL is -1, height of leaves is 0, etc */
    AVL parent;
    if(height(node->left) - height(node->right) == 2) {
      if(n < node->left->element) rotated = s_rotate_left(node);
      else rotated = d_rotate_right(node);
      parent = path->next->element 
      if(parent->left == node) parent->left = rotated;
      else parent->right = rotated;
    }
    /* Then we do the same as above except where the height difference is -2
     * and the rotations go right */
    path = path->next;
  }
  return node; /* This will be the root and the last element of path (possibly
                  a different root than the original due to rotations) */
}

/* I wrote all this in a single flurry so it's probably incorrect in many of
 * the details, but I hope the concept is all there. */

/* [*4.20], 4.23, 4.28, 4.35, 4.45  */ 

/* 4.20
 * 1. If it's a leaf, then remove it
 *    Else if it's internal, then swap it with the inorder successor and then
 *    delete the inorder successor.
 * 2. Follow the path back up to the root, rebalancing as needed, just like
 *    insertion, except we will go all the way back up to the root. There seems to
 *    be at least one other special rebalancing case as we go up, but I can't
 *    figure out what exactly it is. It has something to do with the balance
 *    factors of subtrees. If we rebalance and find that our current node becomes
 *    0, then we do a right rotation. Or something. 
 */

/*
 * 4.23

Access 3,9,1,5

zig-zag
         10
        /  \
       4    11
      /  \     \
     2    6     12
    / \  / \      \
   1  3 5   8      13
           / \
          7   9

         10
        /  \
       4    11
      /  \     \
     2    6     12
    / \  / \      \
   1  3 5   8      13
           / \
          7   9

zig

Yeah, this is going to be really, really tedious to type out. I assure you I
understand the concept. See my fall quarter final to see a problem like this
that I actually typed out.
 */

/*
 * 4.28
 * a. number of nodes
 */ 

BinaryTree nodes(BinaryTree t) {
	if(t == NULL) return 0;
	else return 1 + nodes(t->left) + nodes(t->right);
}


/*
 * b. number of leaves
 */ 

BinaryTree leaves(BinaryTree t) {
  if(t->l == NULL && t->r == NULL) return 1;
	else return leaves(t->l) + leaves(t->r);
}
 
/*
 * c. number of full nodes
 * What are full nodes?
 * I'll assume it means there are two children
 */

BinaryTree fullnodes(BinaryTree t) {
	if(t == NULL) return 0;
	if(t->l == NULL || t->r == NULL) return fullnodes(t->l) + fullnodes(t->r);
	else return 1 + fullnodes(t->l) + fullnodes(t->r);
}

/*
 * 4.35
 * Level order function
 * Unlike the other traversals, this is not naturally recursive, which means
 * it's an abomination.
 * I loop through each level, creating a list of the level's nodes
 */


List level_order(BinaryTree t) {
	List trav, next, level = singleton(t);
	Node n;
	
	while(!level.is_empty()) {
		freeList(next); emptyList(next); /*  this could be optimized */ 
		append(l,  trav);
	
		while(n) {
			if(n->l) cons(n->l, next);
			if(n->r) cons(n->r, next);
			n = n->next;
		}
		
		level = next;
	}
	return trav;
}

/*
 * 4.45
 * a. You could create two pointer types
 *    Or you could do negative and positive pointers
 * b. 
 */ 

/*  This isn't one of my best algorithms. It uses a doubly linked list. */

Threaded insert(Type n, Threaded t) {
	inserted = insert1(n, t);
	inordering = flatten(t);
	inserted->left = find(inordering, inserted)->prev;
	inserted->left = find(inordering, inserted)->next;
	return t;
}

Threaded insert1(Type n, Threaded t) {
	/* Do a regular binary tree insert and return the inserted node at the end */ 
}


/*  For deletion, we would consider cases:
 *  Case 1: leaf
 *  We would delete the leaf and then have its parent point to succ/pred instead
 *  Case 2: internal
 *  We would swap with inorder predecessor, delete, and then we'd have to go to the parent of the swapped leaf node we deleted and change their null pointers to pred/succ.
 */ 

/*
 * c. Better space usage. Branches and leaves are packed with more information.
 */
