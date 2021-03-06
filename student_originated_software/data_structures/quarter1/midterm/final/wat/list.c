list.h                                                                                              0000744 0535452 0304241 00000001006 11654677155 007155  0                                                                                                    ustar                                                                                                                                                                                                                                                          /*  Jay Bolton
 *  Midterm, part 1
 */

#ifndef LINKED_LIST_H
#define LINKED_LIST_H

typedef struct node * Node;
typedef struct list * List;
typedef int Ltype;

struct node;
struct list;

List emptyList();
List cons(Ltype elem, List l);
Node retrieve(List l, int i);
List reverse(List l);

/* silly getter/setter functions for nonmemberReverse */ 
Node getFirst(List l);
Node getNext(Node n);
List setFirst(List l, Node n);
List setLast(List l, Node n);
Node setNext(Node n, Node next);

#endif    /* LINKED_LIST_H */
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          queue.c                                                                                             0000744 0535452 0304241 00000002366 11654677153 007331  0                                                                                                    ustar                                                                                                                                                                                                                                                          /*  J Bolton
 *  Midterm, Data Structures and Algorithms
 *  Part 3, circular array queue with combine function
 */

#include <stdlib.h>
#include <stdio.h>
#include "list.c"
#include "queue.h"

struct queue {
  int cap, length;
  int front, rear;
  Qtype * elements;
};

/* O(N) (i think?) */
Queue createQueue(int cap) {
  Queue q = malloc(sizeof(struct queue));
  q->elements = malloc(sizeof(Qtype) * cap);
  q->cap = cap; q->length = 0;
  q->front = 1; q->rear = 0;
  return q;
}

/* O(1) (i think?) */
void freeQueue(Queue q) { free(q->elements); free(q); }

/* O(1) */
Queue enqueue(Qtype x, Queue q) {
  if(q->length == q->cap) return q;
  q->length++;
  q->rear = (q->rear+1) % q->cap;
  q->elements[q->rear] = x;
  return q;
}

/* O(1) */
Queue dequeue(Queue q) {
  if(q->length == 0) return q;
  q->length--;
  q->front = (q->front+1) % q->cap;
  return q;
}

/* O(N)  */
/* This behaves similarily to Haskell's zip */
Queue combine(Queue a, Queue b) {
  int i, bound = a->length < b->length ? a->length : b->length,
         apos = a->front, bpos = b->front;
  Queue q = createQueue(bound*2);
  for(i = 0; i < bound; i++, apos=(apos+1)%a->length, bpos=(bpos+1)%b->length) {
    enqueue(a->elements[apos],q);
    enqueue(b->elements[bpos],q);
  }
  return q;
}
                                                                                                                                                                                                                                                                          queue.h                                                                                             0000744 0535452 0304241 00000000557 11654677155 007340  0                                                                                                    ustar                                                                                                                                                                                                                                                          /*  J Bolton
 *  Midterm, Data Structures and Algorithms
 *  Part 3, circular array queue with combine function
 */

#ifndef QUEUE_H
#define QUEUE_H

typedef struct queue * Queue;
typedef int Qtype;

struct queue;

Queue createQueue(int cap);
void freeQueue(Queue q);
Queue enqueue(Qtype x, Queue q);
Queue dequeue(Queue q);

Queue combine(Queue a, Queue b);

#endif
                                                                                                                                                 readme                                                                                              0000644 0535452 0304241 00000000315 11654701577 007206  0                                                                                                    ustar                                                                                                                                                                                                                                                          compile with:
gcc -ansi testProb1.c -o testProb1
gcc -ansi testProb2.c -o testProb2
gcc -ansi testProb3.c -o testProb3

The way you listed wasn't working for me and I ran out of time to
troubleshoot it.  
                                                                                                                                                                                                                                                                                                                   stack.c                                                                                             0000744 0535452 0304241 00000001713 11654677153 007305  0                                                                                                    ustar                                                                                                                                                                                                                                                          /*  J Bolton
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
                                                     stack.h                                                                                             0000744 0535452 0304241 00000000350 11654677155 007310  0                                                                                                    ustar                                                                                                                                                                                                                                                          /*  J Bolton
 *  Midterm, part 2
 */

#ifndef STACK_H
#define STACK_H

typedef struct stack * Stack;
typedef int Stype;

struct stack;

Stack emptyStack();
Stack push(Stype x, Stack s);
Stack pop(Stack s);
void freeStack();

#endif
                                                                                                                                                                                                                                                                                        testProb1.c                                                                                         0000744 0535452 0304241 00000004454 11654701335 010056  0                                                                                                    ustar                                                                                                                                                                                                                                                          /*  Jay Bolton
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
                                                                                                                                                                                                                    testProb2.c                                                                                         0000744 0535452 0304241 00000002046 11654701356 010055  0                                                                                                    ustar                                                                                                                                                                                                                                                          /*  J Bolton
 *  Midterm, part 2
 */

#include "stack.c"
#include <stdio.h>


void printStack(Stack s) {
  int i;
  if(s->length == 0) printf("Empty stack\n");
  else {
  for(i = 0; i <= s->top; i++) printf("|%i",s->elements[i]->elem);
  printf(" <-- top\n");
  }
}

void testLib() {
  printf("Testing stack library functions...\n");
  Stack s = createStack(3);

  printf("\nCase 1: pushing elements greater than capacity...\n");
  push(0,s); push(1,s);
  push(2,s); push(3,s);
  printStack(s);
  int success = s->top == 2;

  printf("\nCase 2: popping elements greater than length...\n");
  pop(s); pop(s);
  pop(s); pop(s);
  pop(s); pop(s);
  pop(s);
  printStack(s);
  success = success && s->top == -1;

  printf("\nCase 3: pushing after having already enqueued and dequeued...\n");
  push(0,s); push(1,s);
  push(2,s); push(3,s);
  push(2,s); push(3,s);
  printStack(s);
  success = success && s->top == 2;
  printf("\n");

  freeStack(s);
  if(success) printf("  ☺ success.\n");
  else printf("  ☹ failure.\n");
}

int main() { testLib(); return 0; }
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                          testProb3.c                                                                                         0000744 0535452 0304241 00000004712 11654701411 010050  0                                                                                                    ustar                                                                                                                                                                                                                                                          /*  J Bolton
 *  Midterm, Data Structures and Algorithms
 *  Part 3, tests for combining queues
 */

#include "queue.c"

void printQueue(Queue q) {
  /* looks like: <|1|2|3|4|<  */
  printf("<|");
  int i, pos = q->front;
  for(i = 0; i < q->length; i++, pos = (pos+1)%(q->cap))
      printf("%i|", q->elements[pos]);
  printf("<\n");
}

void testCombine() {
  printf("\ntesting combine...\n");
  int success = 0;

  printf("Case 1: queues are the same size\n");
  Queue a = createQueue(4);
  enqueue(0,a); enqueue(1,a);
  enqueue(2,a); enqueue(3,a);
  printf("Queue a = ");
  printQueue(a);
  Queue b = createQueue(4);
  enqueue(0,b); enqueue(1,b);
  enqueue(2,b); enqueue(3,b);
  printf("Queue b = ");
  printQueue(b);
  Queue merged = combine(a,b);
  printf("Combination = ");
  printQueue(merged);
  success = merged->length = 8;

  printf("\nCase 2: b is larger\n");
  printf("Queue a = ");
  printQueue(a);
  freeQueue(b);
  b = createQueue(20);
  enqueue(0,b); enqueue(1,b);
  enqueue(2,b); enqueue(3,b);
  enqueue(4,b); enqueue(5,b);
  printf("Queue b = ");
  printQueue(b);
  freeQueue(merged);
  merged= combine(a,b);
  printf("Combination = ");
  printQueue(merged);
  success = success && merged->length == 8;

  printf("\nCase 3: a is larger\n");
  freeQueue(merged);
  merged= combine(b,a);
  printf("Combination = ");
  printQueue(merged);
  success = success && merged->length == 8;

  printf("\nCase 4: queue is empty\n");
  freeQueue(a);
  a = createQueue(2);
  freeQueue(merged);
  merged = combine(a,b);
  printf("Queue a = ");
  printQueue(a);
  printf("Queue b = ");
  printQueue(b);
  printf("Combination = ");
  printQueue(merged);
  success = success && merged->length == 0;

  if(success) printf("  ☺ success.\n");
  else printf("  ☹ failure.\n");
}

/* A rudimentary test of my library */
void testLib() {
  printf("testing createQueue, enqueue, dequeue, and freeQueue...\n");
  Queue q = createQueue(4);
  enqueue(0,q); enqueue(1,q);
  enqueue(2,q); enqueue(3,q);
  enqueue(3,q); enqueue(3,q);
  enqueue(3,q);
  int success = q->length == 4;
  printQueue(q);
  dequeue(q); dequeue(q);
  dequeue(q); dequeue(q);
  dequeue(q); dequeue(q);
  success = q->length == 0;
  printQueue(q);
  enqueue(0,q); enqueue(1,q);
  enqueue(2,q); enqueue(3,q);
  enqueue(3,q); enqueue(3,q);
  success = q->length == 4;
  printQueue(q);
  if(success) printf("  ☺ success.\n");
  else printf("  ☹ failure.\n");
}

int main() {
  testLib();
  printf("\n");
  testCombine("\n");
  return 0;
}
                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                      