/*
 * J Bolton
 * Sort any priority queue.
 * Data structures midterm, q2
 */

/*  
 * I will use the interface in sherri's maxPriorityQueue.h
 * Which includes the methods: empty,size,top,pop, and push
 * All we need is top and empty
 */

template <class PriorityQueue, class Element>
Element * sort(PriorityQueue pq) {
	Element xs [pq.size()];
	for(int i = 0, s = pq.size(); i < s && !pq.empty(); ++i) {
		xs[i] = *(pq.top());
		pq.pop(); pq.push(xs[i]); // move elem to back
	} return xs;
}

int main() {

}
