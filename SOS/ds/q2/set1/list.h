/*
 * =====================================================================================
 *
 *        Author: Jay Bolton
 *
 *        Description: A linked list!
 *        Class: Algorithms and Data Structures
 *        Quarter: 2 (winter)
 *        Component: Job scheduling simulator project
 *
 * =====================================================================================
 */

#ifndef List_H
#define List_H

// for to_string and <<:
#include <string>
#include <sstream>
#include <iostream>

template <class T>
class List {

	private:

	struct Node {
		T elem;
		Node *prev;
		Node *next;
		Node(const T &d = T(), Node *p = 0, Node *n = 0)
			: elem(d), prev(p), next(n) {}
	};

	public:

	class const_iterator {

		public:

		const_iterator() : current(0) {}

		const T & operator*() const {
			return retrieve();
		}

		const_iterator & operator++() {
			current = current->next;
			return *this;
		}

		const_iterator operator++(int) {
			const_iterator old = *this;
			++(*this);
			return old;
		}

		const_iterator & operator--() {
			current = current->prev;
			return *this;
		}

		const_iterator operator--(int) {
			const_iterator & old = *this;
			--(*this);
			return old;
		}

		const_iterator & operator+(int k) {
			const_iterator * pos = this;
			for(int i = 0; i < k; i++) pos->current = pos->current->next;
			return *pos;
		}

		bool operator==(const const_iterator & rhs) const {
			return current == rhs.current;
		}

		bool operator!=(const const_iterator & rhs) const {
			return !(*this == rhs);
		}

		protected:

		Node *current;

		T & retrieve() const { return current->elem; }

		const_iterator(Node *p) : current(p) {}

		friend class List<T>;
	};

	class iterator : public const_iterator {

		public:

		iterator() {}

		T & operator*() { return const_iterator::retrieve(); }

		const T & operator*() const { return const_iterator::operator*(); }

		iterator & operator++() {
			const_iterator::current = const_iterator::current->next;
			return *this;
		}

		iterator operator++(int) {
			iterator & old = *this;
			++(*this);
			return old;
		}

		iterator & operator--() {
			const_iterator::current = const_iterator::current->prev;
			return *this;
		}

		iterator operator--(int) {
			iterator & old = *this;
			--(*this);
			return old;
		}


		protected:

		iterator(Node *p) : const_iterator(p) {}

		friend class List<T>;
	};

	// Constructor

	List() { init(); }

	// Destructor

	~List() {
		clear();
		delete head;
		delete tail;
	}

	List(const List & rhs) {
		init();
		*this = rhs;
	}

	const List & operator=(const List & rhs) {
		if(this == &rhs) return *this;
		clear();
		for(const_iterator itr = rhs.begin(); itr != rhs.end(); ++itr)
			push_back(*itr);
		return *this;
	}

	void splice(iterator pos, List& ls) {
		Node * p = pos.current; size += ls.get_size();
		p->prev->next = ls.head->next; ls.head->next->prev = p->prev;
		ls.tail->prev->next = p; p->prev = ls.tail->prev; ls.init();
	}

	iterator       begin() { return iterator(head->next); }
	const_iterator begin() const { return const_iterator(head->next); }
	iterator       end() { return iterator(tail); }
	const_iterator end() const { return const_iterator(tail); }
	int            get_size() const { return size; }
	bool           empty() const { return size == 0; }
	void           clear() { while (!empty()) { pop_front(); } }
	T &            front() { return *begin(); }
	const T &      front() const { return *begin(); }
	T &            back() { return *--end(); }
	const T &      back() const { return *--end(); }
	void           push_front(const T & x) { insert(begin(), x); }
	void           push_back(const T & x) { insert(end(), x); }
	void           pop_back() { erase(--end()); }

	bool has_elem(const T & x) {
		for(const_iterator i = begin(); i != end(); ++i)
			if(x == *i) return true;
		return false;
	}

	T * pop_front() {
		if(empty()) return NULL;
		T * x = & front();
		remove(begin());
		return x;
	}


	iterator insert(iterator itr, const T & x) {
		Node *p = itr.current;
		size++;
		return iterator(p->prev = p->prev->next = new Node(x, p->prev, p));
	}

	// Erases element 'elem' at position 'pos' and returns the next element after.
	iterator erase(iterator pos) {
		Node *elem = pos.current;
		iterator next(elem->next);
		elem->prev->next = elem->next;
		elem->next->prev = elem->prev;
		delete elem; size--;
		return next;
	}

	// Remove the element from the list without deleting it from memory
	iterator remove(iterator pos) {
		Node *elem = pos.current;
		iterator next(elem->next);
		elem->prev->next = elem->next;
		elem->next->prev = elem->prev;
		size--;
		return next;
	}

	iterator erase(iterator start, iterator end) {
		for(iterator i = start; i != end; ) i = erase(i);
		return end;
	}

	std::string to_string() const {
		if(empty()) return "[]";
		std::stringstream s; s << "[";
		for (const_iterator i = begin(); i != end(); ++i)
			s << *i << ", ";
		s << "]"; return s.str();
	}

	friend std::ostream & operator<<(std::ostream & out, const List<T> & ls) {
		return out << ls.to_string();
	}

  private:

	int    size;
	Node * head;
	Node * tail;

	// Defaults
	void init() {
		size = 0;
		head = new Node;
		tail = new Node;
		head->next = tail;
		tail->prev = head;
	}

}; // end class List

#endif
