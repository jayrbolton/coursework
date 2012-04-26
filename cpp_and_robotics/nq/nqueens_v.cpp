////// j bolton
//// n-queens problem

/// Vector version

// haiku for this program:
// a solemn duty
// in the land of angry queens
// to find lasting peace

// TODO:
// * Figure out the isSafe segfault so that we can do n >= 10

#include <iostream>
#include <vector>
using namespace std;

class Board {
	
	private:

		vector<bool> board;
		int n;
		int totalQ; // total queens placed

	public:

		// default is an 8x8 empty board
		Board() {
			n = 8;
			totalQ = 0;
			for (int i = 0; i < 64; i++)
				board.push_back(false);
		}

		// construct an n x n sized empty board
		Board(int _n) {
			n = _n;
			totalQ = 0;
			for (int i = 0; i < _n * _n; i++)
				board.push_back(false);
		}

		// copy constructor -- not implemented 
		Board(const Board& b) { }

		void print() {
			for (int i = 0; i < n*n; i+=n) {
				for (int j = i; j < i+n; j++) {
					if (board[j]) cout << 'Q';
					else cout << '#';
				}
				cout << endl;
			}
		}

		// remove all queens
		void clear() {
			for (int i = 0; i < n * n; i++)
				board[i] = false;
			totalQ = 0;
		}

		// test if a square is unthreatened by other queens
		// only tests columns, diags above the current square
		bool isSafe(int square) {
			// test straight up
			for (int i = square-n; i >= 0; i-=n) {
				if (board[i]) return false;
			}
			// test diagonally up and left
			for (int i = square-(n+1), j = 0;
				j < square-(square/n*n) && i >= 0; i-=n+1, j++) {
				if (board[i]) return false;
			}
			// test diagonally up and right 
			for (int i = square-(n-1), j = 0;
				j < (square/n*n+(n-1))-square && i > 0; i-=n-1, j++) {
				if (board[i]) return false;
			}
			return true;
		}

		// returns new square and modifies total number of placed queens
		int backtrack(int square) {
			int prevRowEnd = square/n*n-1;
			int prevRowBegin = prevRowEnd-(n-1);
			// if the previous queen was on the last square, then recurse
			if (board[prevRowEnd]) {
				board[prevRowEnd] = false;
				totalQ--;
				return backtrack(prevRowBegin);
			}
			// else find the previous queen, remove it, and move up
			else {
				for (int i = prevRowBegin; i < prevRowEnd; i++) {
					if (board[i]) {
						board[i] = false;
						totalQ--;
						return i+1;
					}
				}
			}
			return 0; // just for safety
		}

		// returns total number of solutions, and prints them in the process
		int solve_r(int square) {
			if (totalQ == n) {
				// we've just found a solution, so go find another solution
				print();
				return 1 + solve_r(backtrack(square));
			}
			else {
				// if the square is safe, then capture it and
				// jump to the beginning of the next row
				if (isSafe(square)) {
					board[square] = true;
					totalQ++;
					solve_r(square/n*n+n);
				}
				// else if we are at the end of the row, then backtrack
				else if (square == square/n*n+(n-1)) {
					// base case:
					// if we're in the second row AND there's a queen in the
					// last square of the first, then we've hit the base
					if (square < 2*n && board[square-n])
						return 0;
					else solve_r(backtrack(square));
				}
				// else try the next square
				else {
					solve_r(square+1);
				}
			}
			return 0;
		}
		
		void solve() {
			cout << "Total solutions: " << solve_r(0) << endl;
		}

};

int main() {
	Board b(8);
	b.solve();
	return 0;
}
