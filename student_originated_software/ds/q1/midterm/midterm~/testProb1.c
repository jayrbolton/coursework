/*  Jay Bolton
 *  Tests for list.c
 */

#include "list.c"
#include <stdio.h>

/* This function is an element of O(N) where N is the length of the
 list */
/* Reverse a list using only the interface functions */
List nonmemberReverse(List l) {
  Node position = getFirst(l), next, prev = NULL;
  setLast(l,position);
  while(position) {
    next = getNext(position);
    setNext(position,prev);
    prev = position;
    position = next;
  }
  setFirst(l,prev);
  return l;
}

void printList(List l) {
  Node pos = l->first;
  printf("[ ");
  while(pos) {
    printf("%i ",pos->elem);
    pos = pos->next;
  }
  printf("]\n");
}

/* Tests for list.c */
void reverseTest() {
  printf("testing reverse\n");
  int success = 1, i, j;

  List test = cons(0, cons(1, cons(2, cons(3, createList()))));

  /* test reverse*/ 
  printf("\nCase 1: basic testing\n");
  printf("  original: "); printList(test);
  reverse(test);
  success = success && test->last->elem == 0;
  success = success && test->first->elem == 3;
  printf("  reversed: "); printList(test);
  for(i = 3,j=0; i >= 0 || j<=3; i--,j++)
    success = success && retrieve(test,j)->elem == i;

  printf("\nCase 2: two reversals have no outward effect\n");
  reverse(test);
  for(i = 0; i < 4; i++) success = success && retrieve(test,i)->elem == i;
  printList(test);
  reverse(test);

  printf("\nCase 3: reversing an empty list\n");
  List emptyl = createList();
  reverse(emptyl);
  success = success && emptyl->first == NULL && emptyl->last == NULL;
  printList(emptyl);

  printf("\nCase 4: reversing a singleton \n");
  List singleton = cons(99,createList());
  reverse(singleton);
  success = success && singleton->first->elem == 99 && singleton->last->elem == 99;
  printList(singleton);

  /* tests for nonmemberReverse  */
  /* this is not as thorough as all the above tests, but it is the exact same logic as the original reverse */
  printf("\ntesting nonmemberReverse\n");
  reverse(test); 
  printf("  original: "); printList(test);
  nonmemberReverse(test);
  printf("  reversed: "); printList(test);
  for(i = 3,j=0; i >= 0 || j<=3; i--,j++)
    success = success && retrieve(test,j)->elem == i;

  if(success) printf("\n  ☺ successful \n");
  else printf("\n  failed\n");
  freeList(test);
  freeList(singleton);
  freeList(emptyl);
}

int main() { reverseTest(); return(0); }
