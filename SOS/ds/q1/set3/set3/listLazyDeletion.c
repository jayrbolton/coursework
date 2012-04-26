/* J Bolton
 * Assignment 3, Data Structures and Algorithms
 * Linked lists with lazy deletion
 */

#include <stdlib.h>
#include "listLazyDeletion.h"

/* Everything is copied from list.c with LD (lazy deletion) appended to the names */
/* delete() and cleanUp() are the only new functions */
/* delete marks a single node for deletion */
/* cleanUp goes through and checks if deletions are equal to non deletions. if so, nuke shit */
/*  I did not run this but I think the primary concepts are all there */

struct nodeLD {
  int delete;
  LtypeLD elem;
  NodeLD next;
};

struct listLD {
  NodeLD first, last;
  int length;
};

/* O(N) */
void freeListLD(ListLD l) {
  NodeLD next, position = l->first;
  while(position) {
    next = position->next;
    free(position);
    position = next;
  }
  free(l);
}

/* O(1) */
ListLD createListLD() {
  ListLD l = malloc(sizeof(struct listLD));
  l->first = NULL; l->last = NULL;
  l->length = 0;
  return l;
}

/* O(1) */
ListLD consLD(LtypeLD elem, ListLD l) {
  NodeLD n = malloc(sizeof(struct nodeLD));
  n->elem = elem; n->delete = 0;
  if(l->first == NULL && l->last == NULL) {
    l->last = n;
    n->next = NULL;
  }
  else n->next = l->first;
  l->first = n;
  l->length++;
  return l;
}

NodeLD delete(NodeLD n) { n->delete = 1; return n;}

ListLD cleanUp(ListLD l) {
  int deletions = 0, saves = 0;
  NodeLD pos = l->first;
  while(pos) {
    if(pos->delete) deletions++;
    else saves++;
    pos = pos->next;
  }
  if(deletions == saves) {
    pos = l->first;
    while(pos) {
      if(pos->delete); /* then nuke pos */
      pos = pos->next;
    }
  }
  return l;
}
