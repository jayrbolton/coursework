/*  J Bolton
 *  Midterm, Data Structures and Algorithms
 *  Part 3, circular array queue with combine function
 */

#ifndef QUEUE_H
#define QUEUE_H

typedef struct queue * Queue;
typedef int Qtype;

struct queue;

Queue createQueue(int cap);
void freeQueue(Queue q);
Queue enqueue(Qtype x, Queue q);
Queue dequeue(Queue q);

Queue combine(Queue a, Queue b);

#endif
