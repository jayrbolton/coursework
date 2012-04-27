////// j bolton
//// n-queens problem

// haiku for this program:
// a solemn duty
// in the land of angry queens
// to find lasting peace

#include <iostream>
#include <time.h> // for recording how long the algo takes
using namespace std;

class Board {

	private:

		bool * board;
		int n;
		int totalQ; // total queens placed
		int solved;

	public:

		// default is an 8x8 empty board
		Board() {
			board = new bool[64];
			n = 8;
			totalQ = 0;
			for (int i = 0; i < 64; i++)
				board[i] = false;
		}

		// construct an n x n sized empty board
		Board(int _n) {
			board = new bool[_n * _n];
			n = _n;
			totalQ = 0;
			for (int i = 0; i < _n * _n; i++)
				board[i] = false;
		}

		// copy constructor -- not implemented
		Board(const Board& b) { }

		~Board() { delete [] board;	}

		void print() {
			for (int i = 0; i < n*n; i+=n) {
				for (int j = i; j < i+n; j++) {
					if (board[j]) cout << 'Q';
					else cout << '#';
				}
				cout << endl;
			}
		}

		// test if a square is unthreatened by other queens
		// only tests columns, diags above the current square
		bool isSafe(int square) {
			// test straight up
			for (int i = square-n; i >= 0; i-=n) {
				if (board[i]) return false;
			}
			int rowBegin = square/n*n;
			// test diagonally up and left
			for (int i = square-(n+1), j = 0;
				j < square-rowBegin && i >= 0; i-=n+1, j++) {
				if (board[i]) return false;
			}
			// test diagonally up and right
			for (int i = square-(n-1), j = 0;
				j < rowBegin+(n-1)-square && i > 0; i-=n-1, j++) {
				if (board[i]) return false;
			}
			return true;
		}

		// Algorithm:
		//  * iterate through each row and look for a safe square
		//  * then mark the safe square and recursively move to the next row
		//  * if we hit the last square in a row, then come out of recursion
		// I needed two different solve functions to handle N being odd
		// or even -- each solution is found once and then reflected --
		// for even boards, it must stop when the first row queen > n/2-1
		// for odd boards, it must count the solutions when the first
		// row queen is at n/2 without counting the reflections and.
		void solve_odd(int square) {
			int endOfRow = square/n*n+(n-1);

			while (square <= endOfRow) {
				if (square < n && square > n/2) break;
				if (isSafe(square)) {
					board[square] = true;
					totalQ++;
					if (n == totalQ) {
						board[square] = false; // backtrack
						if (board[n/2]) solved++;
						else solved+=2;
						totalQ--;
						break;
					}
					solve_odd(square/n*n+n); // go to next row
					board[square] = false; // backtrack
					totalQ--;
				}
				square++;
			}
			return;
		}
		
		void solve_even(int square) {
			int endOfRow = square/n*n+(n-1);

			while (square <= endOfRow) {
				if (square < n && square > n/2-1) break;
				if (isSafe(square)) {
					board[square] = true;
					totalQ++;
					if (n == totalQ) {
						board[square] = false; // backtrack
						solved+=2;
						totalQ--;
						break;
					}
					solve_even(square/n*n+n); // go to next row
					board[square] = false; // backtrack
					totalQ--;
				}
				square++;
			}
			return;
		}

		void solve() {
			int start = time(NULL);
			solved = 0;
			if (n % 2 == 0) solve_even(0);
			else solve_odd(0);
            int totalTime = time(NULL) - start;
			cout << "Total solutions for a " 
				<< n << "x" << n << " board: " << solved << endl;
			cout << "Total seconds: " << totalTime << endl;
		}

};

int main() {
	cout << "N Queens Problem" << endl;
	int N;
	cout << "Enter the board's width: ";
	cin >> N; 
	Board b(N);
	b.solve();
	return 0;
}
