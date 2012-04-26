/*  J Bolton
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
//  printf("top = %i\n",s->top);
  success = success && s->top == -1;

  printf("\nCase 3: pushing after having already enqueued and dequeued...\n");
  push(0,s); push(1,s);
  push(2,s); push(3,s);
  push(2,s); push(3,s);
  printStack(s);
//  printf("top = %i\n",s->top);
  success = success && s->top == 2;
  printf("\n");

  freeStack(s);
  if(success) printf("  ☺ success.\n");
  else printf("  ☹ failure.\n");
}

int main() { testLib(); return 0; }
