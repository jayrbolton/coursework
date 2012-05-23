/*
  J Bolton
  File copying in C
  Also it finds and expands #includes
  And it bakes cookies.
*/

#include <stdio.h>
#include <string.h>
#include <regex.h>
#include <stdlib.h>

void copyfile(FILE *in, FILE *out) {
  char *buf = NULL, *incfilename = malloc(80);
  size_t n = 5;
  regex_t increg;
  int reti = regcomp(&increg, "^#include [\"<]([^\"<]+)[\">]",REG_EXTENDED);
  int start,end;
  size_t nmatch = 2;
  regmatch_t match[nmatch];
  FILE *incfile;
  while (getline(&buf, &n, in)>0) {
    reti = regexec(&increg, buf, nmatch, match, 0);
    if(reti == 0) {
      start = match[1].rm_so;
      end = match[1].rm_eo - start;
      incfilename = strndup(&buf[start],end);
      incfile = fopen(incfilename, "r");
      if (!incfile) {
        fprintf(stderr, "Error opening %s for reading.\n", incfilename);
      } else {
        copyfile(incfile, out);
        fclose(incfile);
      }
    } else fputs(buf, out);
  }
  free(incfilename);
}

int main (int argc, char **argv) {
  if (argc < 3) {
 1;
  }

  copyfile(in,out);

  fclose(in); fclose(out);
  return 0;
}

