/*  Jay Bolton
 *  Linked list
 *  Data Structures and Algorithms
 */

#ifndef LINKED_LIST_H
#define LINKED_LIST_H

typedef struct node * Node;
typedef struct list * List;
typedef int Ltype;

struct node;
struct list;

List createList();
List cons(Ltype elem, List l);
Node retrieve(List l, int i);
Node retrieveAdjust(List l, int i);
List reverse(List l);
void freeList(List l);

#endif
