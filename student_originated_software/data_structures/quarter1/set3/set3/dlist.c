/*  J Bolton
 *  Doubly linked lists
 *  Data Structures and Algorithms
 */

#include <stdlib.h>
#include "dlist.h"

struct dnode {
  DLtype elem;
  DNode next;
  DNode prev;
};

struct dlist {
  DNode first, last;
  int length;
};

/* O(N) assuming free() is constant */
void freeDList(DList l) {
  DNode next, position = l->first;
  while(position) {
    next = position->next;
    free(position);
    position = next;
  }
  free(l);
}

/* O(1) */
DList createDList() {
  DList l = malloc(sizeof(struct dlist));
  l->first = NULL; l->last = NULL;
  l->length = 0;
  return l;
}

/* O(1) */
DList consD(DLtype elem, DList l) {
  DNode n = malloc(sizeof(struct dnode));
  n->elem = elem;
  if(l->first == NULL && l->last == NULL) {
    l->last = n;
    n->next = NULL;
  }
  else {
    l->first->prev = n;
    n->next = l->first;
  }
  n->prev = NULL;
  l->first = n;
  l->length++;
  return l;
}

/* O(N) */
DNode retrieveD(DList l, int i) {
  if (i <= 0) return l->first;
  int j;
  DNode position = l->first;
  for(j = 0; j < i && position->next; j++)
    position = position->next;
  return position;
}
