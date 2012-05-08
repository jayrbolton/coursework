/*  Jay Bolton
 *  Midterm, part 1
 *  Data Structures and Algorithms
 */

#include <stdlib.h>
#include "list.h"

struct node {
  Ltype elem;
  Node next;
};

struct list {
  Node first, last;
  int length;
};

/* O(N) assuming free() is constant */
void freeList(List l) {
  Node next, position = l->first;
  while(position) {
    next = position->next;
    free(position);
    position = next;
  }
  free(l);
}

/* O(1) */
List createList() {
  List l = malloc(sizeof(struct list));
  l->first = NULL; l->last = NULL;
  l->length = 0;
  return l;
}

/* O(1) */
List cons(Ltype elem, List l) {
  Node n = malloc(sizeof(struct node));
  n->elem = elem;
  if(l->first == NULL && l->last == NULL) {
    l->last = n;
    n->next = NULL;
  }
  else n->next = l->first;
  l->first = n;
  l->length++;
  return l;
}

/* O(N) */
Node retrieve(List l, int i) {
  if (i <= 0) return l->first;
  int j;
  Node position = l->first;
  for(j = 0; j < i && position->next; j++)
    position = position->next;
  return position;
}


/* Write a function to reverse a list
 * Your algorithm should not allocate any additional space
 */

/* This function is an element of O(N) where N is the length of the
 list */
List reverse(List l) {
    Node position = l->first, next, prev = NULL;
    l->last = position;
    while(position) {
      next = position->next;
      position->next = prev;
      prev = position;
      position = next;
    }
    l->first = prev;
    return l;
}

/* getter/setter functions for nonmemberReverse (in testProb1.c) */ 

Node getFirst(List l) {return l->first;}
Node getNext(Node n)  {return n->next;}
List setFirst(List l, Node n) {l->first = n; return l;}
List setLast(List l, Node n) {l->last = n; return l;}
Node setNext(Node n, Node next) {n->next = next; return n;}
