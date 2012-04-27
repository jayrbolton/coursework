////// j bolton
//// Data structure for card games

#include <iostream>
#include <cstdlib>
using namespace std;

class Card {

	private:

		int suit; // clubs = 0, diamonds = 1, hearts = 2, spades = 3
		int rank; // deuce = 0, three = 1, four = 2, ..., king = 11, ace = 12

	public:

		// null constructor
		Card(): suit(0), rank(0) { }

    	// constructor based on integer 0 = 2C, 1 = 3C, ..., 51 = AS
	    Card(int c) {
			suit = c / 13;
			rank = c % 13;
		}

		// copy constructor
		Card(const Card& c) {
			suit = c.suit;
			rank = c.rank;
		}

		int getRank() { return rank; }
		int getSuit() { return suit; }

		// for sorting cards by suit then rank
		bool less(Card c) {
			if (suit < c.suit) return true;
			else if (suit > c.suit) return false;
			else if (rank < c.rank) return true;
			else return false;
		}

		// represent cards as "2H", "9C", "JS", "AD"
		string toString() {
			string rankStr [13] = 
			{"2", "3", "4", "5", "6", "7", "8", "9", "T", "J", "Q", "K", "A"};
			string suitStr [4]= {"C", "D", "H", "S"};
			return rankStr[rank] + suitStr[suit];
		}
};

class Deck {

	private:

		Card cards [52];

	public:

		// null constructor
		Deck() { 
       		for (int i = 0; i < 52; i++)
				cards[i] = Card(i);
		}

		// copy constructor
		Deck(const Deck& d) {
			for (int i = 0; i < 52; i++)
				cards[i] = d.cards[i];
		}

	    void shuffle() {
			srand (time(NULL));
			for (int i = 0; i < 52; i++) {
				int r = (rand() % 52);
				Card swap = cards[i];
				cards[i] = cards[r];
				cards[r] = swap;
			}
			return;
		}

		string toString() {
			string s = "Deck: ";
			for (int i = 0; i < 52; i++)
				s += cards[i].toString() + " ";
			return s;
		}



};

int main () {
	Card mycard(4);
	Card anothercard(45);
	cout << mycard.less(anothercard) << endl; 
	cout << mycard.toString() << endl;
	mycard = anothercard;
	cout << mycard.toString() << endl;
	Deck mydeck;
	cout << mydeck.toString() << endl;
	cout << &mycard << endl;
	mydeck.shuffle();
	cout << "1" << endl;
	//cout << mydeck.toString() << endl;
	//cout << "2" << endl;
	return 0;
}
