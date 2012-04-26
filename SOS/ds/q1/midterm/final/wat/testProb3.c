/*  J Bolton
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
