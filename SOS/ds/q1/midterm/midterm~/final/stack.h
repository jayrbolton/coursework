/*  J Bolton
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
