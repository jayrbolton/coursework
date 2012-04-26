#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>
#include <string.h>
#include <sys/types.h>
#include <sys/wait.h>
#include <fcntl.h>
#include <errno.h>

/*
 * Buffers
 */

#define BUFSIZE 80
char buf[BUFSIZE];

/*
 * Prototypes
 */
void sendmsg(int fd);
void producer(char *fifo);

/*
 * This version assumes the FIFO exists so that we don't
 * have to introduce synchronization.
 */

int main(int argc, char **argv) {

	if (argc != 2) {
		fprintf(stderr, "Usage: %s pipename\n", argv[0]);
		exit(1);
	}

	producer(argv[1]);

}

void producer(char *fifo) {
	int i;
	int fd;

	fprintf(stderr, "Producer[%d] about to open FIFO %s\n",
		getpid(), fifo);
	if ((fd = open(fifo, O_WRONLY)) < 0) {
		perror("Producer could not open FIFO");
		exit(1);
	}

	for (i=0; i<15; i++) {
		sleep(1);
		sendmsg(fd);
	}

	close(fd);
}



void sendmsg(int fd) {
	int sz;

	sprintf(buf, "Producer writes: pid [%d]\n", getpid());
	printf("ON CONSOLE TRACE: %s", buf);
	sz = strlen(buf)+1;
	if (write(fd, buf, sz) != sz) {
		fprintf(stderr, "Producer write to FIFO failed\n");
		exit(1);
	}
}
