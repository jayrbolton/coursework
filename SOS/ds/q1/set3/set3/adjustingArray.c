/* J Bolton
 * Self adjusting array
 * Data Structures and Algorithms
 */

/*  Didn't run this but I think the concepts are there */
/*  Front starts at the back and decrements to 0 */

#include <stdlib.h>

typedef struct adjustingArray * AdjustingArray;
struct adjustingArray;
AdjustingArray createAA(int cap);

struct adjustingArray {
  int * elements;
  int cap, length, front;
};

AdjustingArray createAA(int cap) {
  AdjustingArray a = malloc(sizeof(struct adjustingArray));
  a->cap = cap; a->front = cap; a->length = 0;
  a->elements = malloc(cap * sizeof(int));
  return a;
}

AdjustingArray cons(int elem, AdjustingArray a) {
  if(a->front == 0 && a->length == a->cap) return a;
  a->elements[--a->front] = elem;
  a->length++;
  return a;
}

int retrieve(AdjustingArray a, int index) {
  if(index >= a->cap) return a->elements[a->cap-1];
  if(index <= 0) return a->elements[a->front];
  int elem = a->elements[a->front+index];
  /* swap first and elem */
  int first = a->elements[a->front];
  a->elements[a->front] = elem;
  a->elements[a->front+index] = first;
  return elem;
}
