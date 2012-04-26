/* Jay R Bolton 
   Data Structures
   Quarter 1
   Week 1
   Problem Set 1 */

#include <stdio.h>

/* 1.2 */
void puzzle(char** words, char** grid) {
  int row,col,word,i;
  row = sizeof(grid);
  while(row--) { 
    col = sizeof(grid[0]);
    while(col--) {
      printf("hi\n");
    }
  }
  //while(row--) while(col--) printf("(%d,%d)\n",row,col);
}

int main() {
  char words[4][4] = {"this","two","fat","that"};
  char grid[4][4] = {"this","wats","oahg","fgdt"};
  puzzle(words,grid);

}
