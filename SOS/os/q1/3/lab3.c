/* J Bolton
 * Lab 3, Operating Systems
 * Forks
 */
/* Executive Summary:
 * A fork is an operating system call whereby a
 * process creates a copy of itself. I created a
 * function called fork_greeting that tests the
 * return value (a status number) of my fork()
 * call. I use the wait() function in the parent
 * branch to ensure that the parent waits for the
 * child's completion before it exits.
 *
 * Running this both on ada and slacker produce identical
 * results since I am not doing anything beyond the scope of
 * linux 2.4
 * */

#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <unistd.h>

void fork_greeting(pid_t pid) {
  int status;
  if(pid == 0) {
    printf("Child\n");
  }
  else if (pid < 0) {
    printf("Fork failed\n");
  }
  else {
    printf("Parent\n");
    wait(&status);
  }
}

int main() {
  fork_greeting(fork());
  return 0;
}

/* The program's output:
 * Parent
 * Child
 */
