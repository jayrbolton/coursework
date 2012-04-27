#include <iostream>
#include <string>

using namespace std;

char board [9] = {'#', '#', '#', '#', '#', '#', '#', '#', '#'};
char player1Mark, player2Mark; 
int turns; 

void getUserPrefs() {
	cout << "Choose a character to represent player 1." << endl;
	char c;
	cin >> c;
	player1Mark = c;
	cout << "Choose a character to represent player 2." << endl;
	cin >> c;
	player2Mark = c;
}

//there must be a better way to do this --
bool checkForWin(char mark) {
	for (int i = 0; i < 9; i += 3) 
		if (board[i] == mark & board[i+1] == mark & board[i+2] == mark)
			return true;
	for (int i = 0; i < 3; i++) 
		if (board[i] == mark & board[i+3] == mark & board[i+6] == mark)
			return true;
	if (board[0] == mark & board[4] == mark & board[8] == mark) 
		return true;
	if (board[2] == mark & board[4] == mark & board[6] == mark) 
		return true;
	return false;
}

bool isValidMark(int i) {
	return (board[i] == '#') ? true : false;
}

void printBoard() {
	for (int i = 0; i < 9; i += 3) {
		for (int j = i; j < i+3; j++) {
			cout << board[j];
		}
		cout << endl;
	}
}

// returns false if nobody has won, true if somebody won
bool play() {
	//player one's turn:
	if (turns == 9) {
		cout << "Draw." << endl;
		return false;
	}
	char current, previous;
	if (turns % 2 == 0) {
		current = player1Mark;
		previous = player2Mark;
	}
	else {
		current = player2Mark;
		previous = player1Mark;
	}
	if (checkForWin(previous)) {
		cout << previous << " wins." << endl;
		return false; 
	}
	cout << current << "'s turn -- choose row (1-3): ";
	int r;
	cin >> r;
	cout << "Choose column: ";
	int c;
	cin >> c;
	int i = 3*(r-1)+(c-1);
	if (isValidMark(i)) {
		board[i] = current;
		cout << current << "'s play: " << endl;
		printBoard();
		turns++;
		return true;
	}
	else {
		cout << "That spot is taken. Try again." << cout;
		return true;
	}
}

//as long as nobody wins, continue to call play()
void playLoop() {
	if (play()) playLoop(); else return;
}

int main () {
	getUserPrefs();
	cout << "The board:" << endl;
	printBoard();
	playLoop();
	return 0;
}
