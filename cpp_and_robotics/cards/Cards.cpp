////// j bolton
//// Data structure for card games

/* User guide:
 *
 * The Card data type contains 'suit' and 'rank' as ints:
 *
 * int:  0 1 2 3 4 5 6 7 8 9 10 11 12
 * rank: 2 3 4 5 6 7 8 9 T J Q  K  A
 *
 * int:  0 1 2 3
 * suit: C D H S
 *
 * A Card data type can be constructed in the follwing ways:
 * Card(); // defaults to two of clubs
 * Card(int); // int is 0-51: 0-12 are clubs, 13 - 25 are diamonds,
 * 			  // 26-38 are hearts, and 39-51 are spades
 * Card(string); // where string is "2C", "AS", etc
 * Card(Card); // copy constructor
 *
 * NOTE: "TC" is the ten of clubs, not "10C"
 *
 * Available Card methods:
 * getRank(); getSuit(); // return ints
 * less(); // tests suit, then rank: spades > hearts > diamonds > clubs
 * toString(); // returns "AS", "TH", "7C", etc
 *
 * The CardPile data type can be used for a deck, discard pile, hands, community
 * piles, and any other collection of cards. It uses vectors.
 *
 * A CardPile can be constructed in the following ways:
 * CardPile(); // declare an empty pile
 * CardPile(int); // use 52 for a standard deck.
 * CardPile(CardPile); // copy constructor
 *
 * Available CardPile methods:
 * shuffle(); // randomizes the pile
 * toString(); // returns single-line string with each card separated by a space
 * deal(int); // removes n cards from top of pile and returns a new pile with
 * 			  // those cards
 * sort(); // sorts the pile in ascending order using less()
 */

#ifndef _INCL_GUARD
#define _INCL_GUARD
#include <string>
#include <cstdlib>
#include <vector>

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

		// constructor based on string, such as "2C", "3D", "TS", etc
		Card(std::string s) {
			std::string rankStr = "23456789TJQKA";
			std::string suitStr = "CDHS";
			for (int i = 0; i < 13; i++)
				if (s[0] == rankStr[i]) rank = i;
			for (int i = 0; i < 4; i++)
				if (s[1] == suitStr[i]) suit = i;
		}

		int getRank() { return rank; }
		int getSuit() { return suit; }

		// for sorting cards by suit then rank
		// spades > hearts > diamonds > clubs
		bool lessSuit(Card c) {
			if (suit < c.suit) return true;
			else if (suit == c.suit && rank < c.rank) return true;
			else return false;
		}

		bool lessRank(Card c) {
			if (rank < c.rank) return true;
			else if (suit == c.suit && rank < c.rank) return true;
			else return false;
		}

		// represent cards as "2H", "9C", "JS", "AD"
		std::string toString() {
			std::string rankStr [13] =
			{"2", "3", "4", "5", "6", "7", "8", "9", "T", "J", "Q", "K", "A"};
			std::string suitStr [4]= {"C", "D", "H", "S"};
			return rankStr[rank] + suitStr[suit];
		}
};

// this class encompasses a deck, individual hands, discard piles, etc
class CardPile {

	private:

		std::vector<Card> cards;

	public:

		// null constructor
		CardPile() { }

		// copy constructor
		CardPile(const CardPile& p) {
			std::vector<Card> newcards = p.cards;
			for (std::vector<Card>::iterator iter = newcards.begin();
					iter != newcards.end(); iter++)
				cards.push_back(*iter);
		}

		// constructor based on pile size -- giving 52 will make a standard deck
		CardPile(int size) {
       		for (int i = 0; i < size; i++)
				cards.push_back(Card(i));
		}

	    void shuffle() {
			srand (time(NULL));
			Card swap;
			int size = cards.size();
			for (int i = 0; i < size; i++) {
				int r = (rand() % size);
				swap = cards[i];
				cards[i] = cards[r];
				cards[r] = swap;
			}
			return;
		}

		std::string toString() {
			std::string s = "";
			for (std::vector<Card>::iterator iter = cards.begin();
					iter != cards.end(); iter++)
				s += (*iter).toString() + " ";
			return s;
		}

		CardPile deal(int size) {
			CardPile hand;
			for (int i = 0; i < size; i++) {
				hand.cards.push_back(cards[0]);
				cards.erase(cards.begin());
			}
			return hand;
		}

		void sortRank() {
			sort(cards.begin(), cards.end(), lessRank());
		}

		void sortSuit() {
			sort(cards.begin(), cards.end(), lessSuit());
		}

};
#endif

int main() {
	return 0;
}
