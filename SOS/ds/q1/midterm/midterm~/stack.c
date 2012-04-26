/*  J Bolton
 *  Midterm -- Data Structures and Algorithms
 *  Preallocated linked list stack
 */

#include <stdlib.h>
#include "list.c"
#include "stack.h"

struct stack {
  Node * elements;
  int top, cap, length;
};

/* O(N) (i think) */
Stack createStack(int cap) {
  Stack s = malloc(sizeof(struct stack));
  s->elements = malloc(sizeof(int) * cap);
  int i;
  for(i = 0; i < cap; i++) s->elements[i] = malloc(sizeof(struct node));
  s->cap = cap; s->top = -1; s->length = 0;
  return s;
}

/* O(1) */
Stack push(Stype x, Stack s) {
  if(s->top+1 == s->cap) return s;
  s->top++; s->length++;
  Node n = s->elements[s->top];
  n->elem = x; n->next = NULL;
  if(s->top > 0) s->elements[s->top-1]->next = n;
  return s;
}

/* O(1) */
Stack pop(Stack s) {
  if(s->length < 1) return s;
  s->top--; s->length--;
  return s;
}

/* O(N) where N = cap */
void freeStack(Stack s) {
  int i;
  for(i=0; i < s->cap; i++) free(s->elements[i]);
  free(s->elements);
  free(s);
}
