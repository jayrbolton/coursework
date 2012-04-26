/* J Bolton
 * Assignment 3, Data Structures and Algorithms
 * Linked lists with lazy deletion
 */

#ifndef LINKED_LIST_H
#define LINKED_LIST_H

typedef struct nodeLD * NodeLD;
typedef struct listLD * ListLD;
typedef int LtypeLD;

struct nodeLD;
struct listLD;

ListLD createListLD();
ListLD consLD(LtypeLD elem, ListLD l);
NodeLD retrieve(ListLD l, int i);
ListLD deleteLD(ListLD l, int i);
void freeListLD(ListLD l);

#endif
