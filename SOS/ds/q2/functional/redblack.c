/* J Bolton
 * Data structures, quarter 2
 * Red-black trees in a functional manner
 */

typedef struct rbtree * RBTree
typedef E int;

enum color { RED, BLACK };

struct rbtree {
	enum color color;
	E element;
	RBTree l; RBTree r;
}

RBTree make_black(RBTree t) { t->color = BLACK; return t; }

RBTree insert(E x, RBTree t) {
	RBTree ret;
	if (t == NULL)
		ret = malloc(sizeof s)
	else if (x < t->element)
		return
			balance(t->color, (insert(x, t->left)), t->element, t->r);
	else if (x > t->element)
		return
			balance(t->color, t->r, t->element, (insert(x,t->right)));
	else
		return t;
}
