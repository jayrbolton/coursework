/*  J Bolton
 *  Homework Set 3
 *  Data Structures and Algorithms
 */

/* Set 3: Exercise 3.1, 3.3, 3.15, 3.16, 3.17, 3.19, 3.25 */


#include "list.c"
#include "dlist.c"
#include <string.h>
#include <stdio.h>

/* 3.1 - Write a program to print out the elements of a singly linked list. */
void printList(List l) {
  Node pos = l->first;
  printf("[ ");
  while(pos) {
    printf("%i ",pos->elem);
    pos = pos->next;
  }
  printf("]\n");
}

void printDList(DList l) {
  DNode pos = l->first;
  printf("[ ");
  while(pos) {
    printf("%i ",pos->elem);
    pos = pos->next;
  }
  printf("]\n");
}

/* 3.3 - Swap two adjacent elements by adjusting only the pointers (and not the
 * data) using:
 * a. Singly linked lists */

  /* swap x with next --
   * prev points to next
   * next points to x
   * x points to afternext */

/* O(N) */
List swap(List l, int index) {
  Node prev, x, next, afternext;
  if(index >= l->length-1) return l;

  /* If we're swapping the first element, we must assign prev to NULL */
  if(index == 0) {
    prev = NULL;
    x = l->first;
    l->first = x->next;
  }
  else {
    prev = retrieve(l,index-1);
    x = prev->next;
  }

  next = x->next;
  afternext = next->next;
  /* If we're swapping the second to last, we need to change l->last */
  if(afternext == NULL) l->last = x;
  next->next = x;

  if(prev) prev->next = next;
  x->next = afternext;
  return l;
}

/* 3.3
 * b. Doubly linked lists
 * This will be the same basic logic, but with more pointer assignments
 */

DList swapD(DList l, int index) {
  DNode prev, x, next, afternext;
  if(index >= l->length-1) return l;

  /* If we're swapping the first element, we must assign prev to NULL */
  if(index == 0) {
    prev = NULL;
    x = l->first;
    l->first = x->next;
  }
  else {
    prev = retrieveD(l,index-1);
    x = prev->next;
  }

  next = x->next;
  afternext = next->next;
  next->next = x;
  x->prev = next;

  /* If we're swapping the second to last, we need to change l->last */
  if(afternext == NULL) l->last = x;

  if(prev) {
    prev->next = next;
    next->prev = prev;
  }

  x->next = afternext;
  if(afternext) afternext->prev = x;
  return l;
}

/* 3.15
 * a. Write an array implementation of self-adjusting lists.
 */
/*  See adjustingListArray.c */
/* b. Write a linked-list implementation */
/*  See list.c for retrieveAdjust and cons */

/*  3.16
 *  a. It tests every position against every other position
 *  b.

List nub(List l) {
  Node position = l->first;
  while(position) {
    Node test = position;
    while(test) {
      if(position->elem == test->elem) remove(test,l);
      test = test->next;
    }
    position = position->next;
  }
}
    c. O(N(N-1)/2)
    d. remove adds N operations per inner loop
       so it's the summation of N^2
       O(N(N-1)(2N+1)/6)
    e. Merge sort it then remove adjacents that are equal
    f. No time
    g. You could avoid using a comparison operator by using subtraction in an
    if statement. Probably not the answer he's looking for but technically
    correct?

*/

/* 3.17 */
/* a. I see no advantage besides acting as a sort of failsafe. It complicates
 * the data structure and performance gains are marginal or negative. */
/* b. See file "listLazyDeletion.c */

/* 3.19 */
/* Write a program to evaluate a postfix expression */
/* The expr struct is really convoluted by I thought it would be fun to emulate algebraic data types */
typedef struct expr * Expression;
enum ops {ADD, SUB, DIV, MUL};
struct expr {
  enum types {VAL, OP} type;
  union expr_u {
    int n;
    struct operator_s {
      enum ops op;
      int param0, param1;
    } op;
  } e;
};

Expression createExpression() { return malloc(sizeof(struct expr)); }

Expression makeOp(enum ops op, Expression e) { e->type = OP; e->e.op.op = op; return e; }
Expression makeVal(int n, Expression e) { e->type = VAL; e->e.n = n; return e; }

int evaluate(Expression e) {
  switch(e->type) {
    case VAL:
      return e->e.n;
    case OP:
      switch(e->e.op.op) {
        case ADD:
          return e->e.op.param0 + e->e.op.param1;
        case SUB:
          return e->e.op.param0 + e->e.op.param1;
        case DIV:
          return e->e.op.param0 + e->e.op.param1;
        case MUL:
          return e->e.op.param0 + e->e.op.param1;
      }
    default:
      printf("it's a flurm!\n");
      break;
  }
  return 0;
}

/* 3.25 */
/*  See queue.c */

int main() {
  List list = cons(0,cons(1,cons(2,cons(3,createList()))));
  DList dlist = consD(0,consD(1,consD(2,consD(3,createDList()))));

  printf("3.1 - Write a program to print out the elements of a singly linked list.\n");
  printList(list);

  printf("3.3 - Swap two adjacent elements by adjusting only the pointers (and not the data) using:\n");
  printf("a. Singly linked lists\n");
  printf("Swapping first element...\n");
  printList(swap(list,0));
  swap(list,0);
  printf("Swapping last element (no effect)...\n");
  printList(swap(list,3));
  printf("Swapping some middle element...\n");
  printList(swap(list,1));
  swap(list,1);
  printf("Swapping second to last element...\n");
  printList(swap(list,2));
  swap(list,2);

  printf("a. Doubly linked lists\n");
  printf("Swapping first element...\n");
  printDList(swapD(dlist,0));
  swapD(dlist,0);
  printf("Swapping last element (no effect)...\n");
  printDList(swapD(dlist,3));
  printf("Swapping some middle element...\n");
  printDList(swapD(dlist,1));
  swapD(dlist,1);
  printf("Swapping second to last element...\n");
  printDList(swapD(dlist,2));
  swapD(dlist,2);

  Expression e = createExpression();
  makeVal(4, e);
  evaluate(e);

  freeList(list);
  return 0;
}
