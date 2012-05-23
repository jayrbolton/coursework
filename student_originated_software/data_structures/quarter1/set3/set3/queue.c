/*  J Bolton
 *  Data Structures and Algorithms
 *  Assignment 3, circular array queue with combine function
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
