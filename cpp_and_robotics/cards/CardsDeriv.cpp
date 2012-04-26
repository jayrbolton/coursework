#include <iostream>
#include "Cards.h"
#include <cstdlib>
#include <vector>
using namespace std;

int main() {
	CardPile deck(52);
	Card as("AS");
	deck.shuffle();
	cout << deck.toString() << endl;
	return 0;
}
