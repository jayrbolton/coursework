/*
 * The learner program uses a user dialog: the user enters states and
 * and the system responds. An alternate style of input is menu
 * driven: the user doesn't have to type correctly (or not very much).
 *
 * We'll print out a sequence of valid choices and the user types
 * his/her choice. We'll use get_code (p. 473) from the standard
 * instead of get/get0. get skips whitespace and get0 reads whatever
 * is there. This is all fairly non-robust, since get0 assumes that
 * the next character is the nl that you want to skip. To make really
 * hardy input is somewhat labor-intensive.
 */

/* NOTE:
 * Unix usu. uses buffered I/O. The standard leaves it up to
 * the implementor if they want to provide unbuffered or buffered keyboard
 * I/O. I'm uses the standard, which is buffered. I haven't dug into
 * the manual yet to see if raw (unbuffered) I/O is supported.
 */

get_from_menu(State):-
	get_char(Code), name(Selection, [Code]), get_code(_),
	interpret(Selection, State).

/*
 * The book uses the fixed ascii codes for the indicated
 * numbers. Instead, I use the numbers (it's better for documentation
 * purposes
 */
interpret(1, georgia).
interpret(2, california).
interpret(3, florida).
interpret(4, maine).

start:-	consult('kb.pl'),
	nl,
	display_menu,
	get_from_menu(State),
	capital_of(State, City),
	nl,
	displayAnswer(State, City).

display_menu:-
	write('Select your state: '), nl,
	write(' 1 Georgia'), nl,
	write(' 2 California'), nl,
	write(' 3 Florida'), nl,
	write(' 4 Maine'), nl,
	write('Type a number, 1 to 4 -- ').



displayAnswer(State, City):-
	write('The capital of '), write(State), write(' is '),
	write(City), nl.
