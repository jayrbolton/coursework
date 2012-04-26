// Jay R Bolton
// OS Lab 1

// Hello world

/*
In Java:

public class HelloWorld {
  public static void main(String[] args) { 
    System.out.println("Hello world");
    for (String arg : args) {
      System.out.println(arg);
    }
    fib();
  }

  public static void fib() {
    BufferedReader reader = new BufferedReader(System.in);
    System.out.print("n = ");
    String n = reader.readLine();
    System.out.println(fib(n));
  } // The iterative fib function looks almost exactly the same in java as in c
}
*/

// In C

#include <stdio.h>

main(int argc, char *argv[]) {
  printf("ciao a tutti!\n"); 
  int i;
  for(i = 0; i < argc; i++) printf("%s\n", argv[i]);

  printf("fibonacci calulator\n");
  int done = 0;
  while(!done) {
    printf("n = ");
    char in[80];
    fgets(in, 80, stdin);
    printf("\nfib(n) = %d\n", fib(atoi(in)));
    if(feof(stdin)) done = 1;
  }
}

// Iteratively
fib(int n) {
  if(n == 0) return 0;
  int x = 0, y = 1, z = 1, i;
  for(i = 1; i < n; i++) {
    z = x + y;
    x = y;
    y = z;
  }
  return z;
}
