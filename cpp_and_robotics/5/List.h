// linked lists

class Li {
	
	public:

		typedef int* iterator;
		typedef const int* const_iterator;
		typedef size_t size_type;

		intList() { create(); }

		size_type size();

		//TODO: begin, end, push_back, remove, erase

		iterator operator++();
		iterator operator(int);

		private:

			class Node {
				int val;
				Node *next;
			};

			Node *head;
			Node *limit;
			size_type len;

			void create();
};
