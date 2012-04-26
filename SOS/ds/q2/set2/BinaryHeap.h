
// data structures quarter 2, homework set 2
// 2.10.12, modified by jay bolton


#include <vector>
#include <iostream>
#include <string>

using namespace std;



template <typename T>
class BinaryHeap {

  public:

	explicit BinaryHeap(int capacity = 100) {
		currentSize = 0;
		array.resize(100);
	}

	explicit BinaryHeap(const vector<T> & items) {
		int is = items.size();
		array.resize(is + 10);
		currentSize = is;
		for (int i=0; i<items.size(); i++) array[i+1] = items[i];
		buildHeap();
	}

	bool isEmpty() const {
		return  currentSize == 0;
	}

	const T & findMin( ) const {
		if (currentSize == 0) {
			// dummy error
    		throw 10;
		}
		return array[1];
	}

	void insert(const T & x) {
		int n_siz = array.size();
		if(currentSize >= n_siz) {
			array.resize( (array.size( ) ) * 2 );
		}
		int hole = ++currentSize;
		for( ; hole > 1 && x < array[ hole / 2 ]; hole /= 2 ) {
			array[ hole ] = array[ hole / 2 ];
		}
		array[ hole ] = x;
	}

	void deleteMin() {
		if(isEmpty()) return;
		array.erase(++array.begin());
		--currentSize;
		buildHeap();
	}

	void deleteMin(T & minItem) {}
	void makeEmpty() {}

  const BinaryHeap  & operator= ( const BinaryHeap & rhs ) {
		if(this == &rhs) return *this;
		array.clear();
		currentSize = rhs.array.size();
		for (int i=0; i<rhs.array.size(); i++)
			array[i] = rhs.array[i];
		return *this;
	}

	void printArray() {
		for (int i=0; i<=currentSize; i++)
			cout << "array[" << i << "] = " << array[i]  << ", " ;
		cout << endl;
	}

	private:

	int currentSize;  // Number of elements in heap
	vector<T> array;        // The heap array

	/**
	 * Establish heap order property from an arbitrary
	 * arrangement of items. Runs in linear time.
	 */
	void buildHeap( ) {
		for(int i = currentSize/2; i>0; i--) percolateDown(i);
	}

	void percolateDown( int hole ) {
		int child ;
		T tmp = array[hole];
		for	(; hole*2 <= currentSize; hole = child) {
			child = hole * 2;
			if (child != currentSize && array[child + 1] < array[child])
				child++;
			if (array[child] < tmp)
				array[hole] = array[child];
			else
				break;
		}
		array[hole] = tmp;
	}

};
