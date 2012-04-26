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
void readmsg(int fd);
void consumer(char *fifo);

int main(int argc, char **argv) {


	if (argc != 2) {
		fprintf(stderr, "Usage: %s pipename\n", argv[0]);
		exit(1);
	}

	consumer(argv[1]);

}


void consumer(char *fifo) {
	int i;
	int fd;

	fprintf(stderr, "Parent [%d] about to open FIFO %s\n",
		getpid(), fifo);
	if ((fd = open(fifo, O_RDONLY )) == -1) {
		perror("Consumer can't open FIFO");
		exit(1);
	}

	for (i=0; i<15; i++) {
		sleep(3);
		readmsg(fd);
	}
	close(fd);
}

void readmsg(int fd) {
	int cnt;


	if  ((cnt = read(fd, buf, BUFSIZE)) < 0)  {
		perror("Consumer could not read FIFO");
		exit(1);
	}
	fprintf(stderr, "Consumer [%d] read %d bytes: %s\n", getpid(), cnt, buf);
}

