/* J Bolton
 * Data structures, quarter 2
 * Red-black trees in c
 *
 * This still felt real imperative. I'm not sure how else to make it match the
 * haskell version more closely. All the pointer manipulation took me
 * absolutely forever.
 */

#include <stdlib.h>
#include <stdio.h>
#include <time.h>

typedef struct rbtree * RBTree;
typedef int E;

enum color { RED, BLACK };

struct rbtree {
	enum color color;
	E element;
	RBTree l; RBTree r;
};

void print_tree(RBTree t) {
	char * names[] = {"Red", "Black"};
	printf("%s ", names[t->color]);
	if (t->l != NULL) {
		printf("("); print_tree(t->l); printf(") ");
	}
	else printf("E "); //empty left
	printf("%d ", t->element);
	if (t->r != NULL) {
		printf("("); print_tree(t->r); printf(")");
	}
	else printf("E "); //empty right
}

RBTree make_black(RBTree t) { t->color = BLACK; return t; }

RBTree llr(RBTree t) {
	//save all the pointers we're about to change
	RBTree left = t->l, top = t, leftright = left->r;
	t = left;
	t->r = top;
	t->r->l = leftright;
	t->color = RED;
	t->l->color = BLACK; t->r->color = BLACK;
	printf("llr: "); print_tree(t); printf("\n");
	return t;
}

RBTree lrr(RBTree t) {
	// we must save the originals of pointers we mess with. and the children of
	// pointers we mess with. because we're messing with the children too. i
	// learned this the hard way. ack.
	RBTree left = t->l, top = t, leftrightright = t->l->r->r, leftrightleft = t->l->r->l;
	t = left->r; 
	t->r = top;  
	t->l = left;
	t->l->r = leftrightleft;
	t->r->l = leftrightright;
	t->color = RED;
	t->r->color = BLACK; t->l->color = BLACK;
	printf("lrr: "); print_tree(t); printf("\n");
	return t;
}

RBTree rrr(RBTree t) {
	RBTree right = t->r, top = t, rightleft = t->r->l;
	t = right;
	t->l = top;
	t->l->r = rightleft;
	t->color = RED;
	t->l->color = BLACK; t->r->color = BLACK;
	printf("rrr: "); print_tree(t); printf("\n");
	return t;
}

RBTree rlr(RBTree t) {
	RBTree right = t->r, top = t, rightleftright = t->r->l->r, rightleftleft = t->r->l->l;
	t = right->l; 
	t->l = top;  
	t->r = right;
	t->r->l = rightleftright;
	t->l->r = rightleftleft;
	t->color = RED;
	t->r->color = BLACK; t->l->color = BLACK;
	printf("rlr: "); print_tree(t); printf("\n");
	return t;
}

RBTree balance(RBTree t) {
	if (t->color == BLACK) { // note: these take advantage of short circuit logic expressions
		if (t->l != NULL && t->l->color == RED) {
			if (t->l->l != NULL && t->l->l->color == RED)
				t = llr(t); // left-left rotate
			if (t->l->r != NULL && t->l->r->color == RED)
				t = lrr(t); // left-right rotate
		}
		if (t->r != NULL && t->r->color == RED) {
			if (t->r->r != NULL && t->r->r->color == RED)
				t = rrr(t); // right-right rotate
			if (t->r->l != NULL && t->r->l->color == RED)
				t = rlr(t); // left-right rotate
		}
	}
	return t;
}

RBTree check(E x, RBTree t) {
	if (t == NULL) {
		t = malloc(sizeof(struct rbtree));
    t->color = RED; t->element = x;
		t->l = NULL; t->r = NULL;
	}
	else if (x < t->element) {
		t->l = check(x,t->l);
		t = balance(t);
	}
	else if (x > t->element) {
		t->r = check(x,t->r);
		t = balance(t);
	}
	return t;
}

RBTree insert(E x, RBTree t) { printf("inserting %d\n", x); return make_black(check(x, t)); }

int main() {
	int i;
	RBTree test = NULL;
	srand(time(NULL));
	printf("Inserting 11 random numbers...\n");
	for (i = 0; i < 11; ++i) {
		test = insert(rand() % 11,test);
	}
	printf("final: "); print_tree(test); printf("\n");
	return 0;
}
