/* J Bolton
 * Data Structures and Algorithms, Fall Quarter
 * Week 6 homework
 *
 * Structured sparse matrices
 *
 * Implement a tridiagonal matrix. You matrix implementation should implement
 * the following interface:
 *
 * ElementType get(i,j): get the (i,j) element. If (i,j) is on one of the
 * tri-diagonals, then retrieve it, otherwise return zero.
 *
 * void put(i,j,element): put element at position (i,j). If (i,j) is not on the
 * tridiagonals, then it must be zero, and is not stored. Otherwise store it as
 * indicated.
 *
 * UnStructured sparse matrices
 *
 * Implement a linked sparse matrix. You should implement get and put as above.
 * You can choose which representation type to use: an array of rows or a fully
 * orthogonal representation.
 */

#include <stdlib.h>
#include <stdio.h>

typedef struct triDiag * TriDiag;
typedef int ElementType;

ElementType get(int row, int col, TriDiag tri);

TriDiag put(int row, int col, ElementType elem, TriDiag tri);

struct triDiag {
	ElementType * sup; /* superdiagonal */
	ElementType * dia; /* main diagonal */
	ElementType * sub; /* subdiagonal */
	int size;
};

/*  Support functions:
 *  constructTriDiag: allocate memory for a size*size tridiag matrix
 *  print: print out the matrix
 *  */
TriDiag constructTriDiag(int size) {
	TriDiag td = malloc(sizeof(struct triDiag));
	td->size = size;
	td->dia = malloc(sizeof(int) * size);
	td->sub = malloc(sizeof(int) * (size-1));
	td->sup = malloc(sizeof(int) * (size-1));
	return td;
}

/* Dumb printing */
void printTriDiag(TriDiag tri) {
	int i;
	printf("Superdiagonal:\n");
	for(i = 0; i < tri->size-1; i++) printf("%d ", tri->sup[i]);
	printf("\nDiagonal:\n");
	for(i = 0; i < tri->size; i++) printf("%d ", tri->dia[i]);
	printf("\nSubdiagonal:\n");
	for(i = 0; i < tri->size-1; i++) printf("%d ", tri->sub[i]);
}

/* Put elem at position (row,col) in tri*/
/* I am assuming 0-indexed coordinates for (row,col) */
TriDiag put(int row, int col, ElementType elem, TriDiag tri) {
	if(row==col) tri->dia[row] = elem;
	else if(row==(col-1)) tri->sup[row] = elem;
	else if((row-1)==col) tri->sub[col] = elem;
	return tri; /* If not on diag, super, or sub, do nothing */
}

/* Get element at position (row,col) in tri*/
/* I am assuming 0-indexed coordinates for (row,col) */
/* Same logic as put pretty much */
ElementType get(int row, int col, TriDiag tri) {
	if(row==col) return tri->dia[row];
	else if(row==(col-1)) return tri->sup[row];
	else if((row-1)==col) return tri->sub[col];
	return 0; /* If not on diag, super, or sub, return zero */
}

/* Sparse linked orthogonal pie-tastic matrices
 * (i had to throw another adjective in there)
 * Not actually orthogonal
 * */

typedef struct sparse * Sparse;

Sparse sput(int row, int col, ElementType elem, Sparse s);

ElementType sget(int row, int col, Sparse s);

struct sparse {
	ElementType element;
	int row, col;
	Sparse next;
};

/* Allocate memory for a sparse matrix */
Sparse constructSparse(ElementType elem) {
	Sparse s = malloc(sizeof(struct sparse));
	s->element = elem;
	s->row = 0; s->col = 0;
	s->next = NULL;
	return s;
}

/* Simple print sparse matrix */
void printSparse(Sparse s) {
	Sparse node = s;
	printf("\nSparse matrix elements:\n");
	while(node) {
		printf("%d[%d, %d] ", node->element, node->row, node->col);
		node = node->next;
	}
	printf("\n");
}

Sparse sput(int row, int col, ElementType elem, Sparse s) {
	Sparse new = malloc(sizeof(struct sparse));
	new->element = elem; new->row = row; new->col = col;
	/* Test and replace dup */
	Sparse node = s, prev = NULL;
  while(node) {
  	if(row == node->row && col == node->col) {
			/* We've found a collision, replace it */
			if(prev) prev->next = new;
			new->next = node->next;
			free(node);
			return s;
  	}
		else {
			prev = node;
			node = node->next;
		}
	}
	/*  It's not in the list so cons it to the head */
	new->next = s;
	return new;
}

ElementType sget(int row, int col, Sparse s) {
	Sparse node = s;
	while(node) {
		if(row == node->row && col == node->col)
			return s->element;
		node = node->next;
	}
  return 0;
}

int main() {
	TriDiag test = constructTriDiag(5);
	put(0,0,1,test);
	put(0,1,1,test);
	put(1,0,1,test);
	printTriDiag(test);
	printf("\nget (0,0) from test: %d", get(0,0,test));
	Sparse s = constructSparse(1);
	s = sput(2,2,2,s);
	s = sput(3,3,3,s);
	s = sput(3,3,8,s);
	s = sput(2,2,5,s);

	printSparse(s);
	return 0;
}
