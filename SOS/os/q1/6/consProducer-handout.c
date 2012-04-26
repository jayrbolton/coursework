#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>
#include <unistd.h>

/*
 *2011-11-03
 *--------------------------------------------------------------------------
 * Exercises with the handout code.
 * 1. Fill in the code in the event-handling handout code for the bounded
 * buffer producer-consumer.

 * 2. Modifiy this design toward a more realistic event-handling simulation
 * that handles asynchronous production and consumption of messages - properly
 * suspending producers and consumers on buffer conditions.
 *--------------------------------------------------------------------------


 * Note this is very NON-STANDARD! The use of signal in this way
 * varies across systems and the only way to do a semantically sound
 * version of this involves using sigaction and the signal sets, etc.
 * Too much overhead for this example. YOU HAVE BEEN WARNED!
 *
 * When entering the handler first thing we do is set the handler to
 * ignore .. but a signal could be sent between entering and ignoring.
 * BUT makes no difference here since I'm the only process that is
 * sending the signal!
 *
 * Unbounded buffers! 
 *
 * The handler gets called by the producer indirectly through a signal.
 * The handler determines which function is going to execute next by
 * setting the selector. So when the producer has produced enough
 * it switches to the consumer. When the cnt is low enough it switches
 * to the producer. The main loop doesn't actually know which is
 * going to be called since the control is in the handler.
 */

/*
 * Prototypes
 */

void producer();
void consumer();

/*
 * Global values:
 * cnt: buffer pool index
 * buffers: the buffer pool
 * funcPtrs: the type of the pointer to function
 * func_array: the function array
 * which: which function do I want
 */

static int cnt = 0;
char *buffers[10];

typedef void (*funcPtrs)(void);

funcPtrs func_array[2] = { NULL };

int which;


/*
 * You can enter the handler either when consuming or producing.
 * The handler decides when to switch between producing and consuming
 */


void handler(int i) {
    signal(SIGUSR1, SIG_IGN);    
    printf("In handler with cnt = %d which = %d\n", cnt, which);
    int r;
    srandom(time(0));
    r = random() % 2;
    printf("Random number for handler = %d \n", r);
    which = r;
    
    signal(SIGUSR1, handler);    
}


int main() {
    int i;
    which = 0;
    signal(SIGUSR1, handler);
    func_array[0] = &producer;
    func_array[1] = &consumer;

    /* Initialize Buffers */
    for(i = 0; i < 10; i++) buffers[i] = malloc(80);

    while (1) (*func_array[which])();
}



void producer() {
    int i, r;
    printf("Producing with cnt = %d\n", cnt);
    srandom(time(0));
    r = random() % 10;
    printf("Random number for producer = %d \n", r);

    /* Fill buffers[cnt] with a message and getpid() (eg, use sprintf) */
    for(i = 0; i < r && cnt < 9; i++)  {
      sprintf(buffers[++cnt], "You can't put bacon in a pie!\n");
      printf("Produced: %s and Count = %d\n", buffers[cnt], cnt);
    }

    sleep(2);
    kill(getpid(), SIGUSR1);
}
    
    
void consumer() {
    int i, r;
    printf("Consuming with cnt = %d\n", cnt);
    srandom(time(0));
    r = random() % 10;
    printf("Random number for consumer = %d \n", r);

    /* Print the consumer message in buffers[cnt] */
    for(i = 0; i < r && cnt > 0; i++)
      printf("Consumed: %s and Count = %d\n",buffers[--cnt],cnt);

    sleep(1);
    kill(getpid(), SIGUSR1);
}
