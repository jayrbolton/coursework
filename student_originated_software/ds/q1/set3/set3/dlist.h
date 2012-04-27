
/*  Jay Bolton
 *  Midterm, part 1
 */

#ifndef DLINKED_LIST_H
#define DLINKED_LIST_H

typedef struct dnode * DNode;
typedef struct dlist * DList;
typedef int DLtype;

struct dnode;
struct dlist;

DList createDList();
DList consD(DLtype elem, DList l);
DNode retrieveD(DList l, int i);
void freeListD(DList l);

#endif
