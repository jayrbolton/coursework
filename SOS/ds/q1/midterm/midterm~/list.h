/*  Jay Bolton
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
void freeList(List l);

/* getter/setter functions for nonmemberReverse */ 
Node getFirst(List l);
Node getNext(Node n);
List setFirst(List l, Node n);
List setLast(List l, Node n);
Node setNext(Node n, Node next);

#endif
