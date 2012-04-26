% J Bolton - menu modification

/*
 * This is a program that learns by adding facts.
 *
 * There are 3 (sub)programs or predicates:
 * 	start: initializes the knowledge base, prints instructions
 *		and starts the recursive loop.
 *	process_a_query: prompts the user for input and then calls
 *	answer: to answer the query. answer has 3 actions:
 *		stop: saves the knowledge base by using tell/listing
 *		answers: the capital query because the fact is int its
 *			knowledge base
 *		puts a new facts into the knowledge base if the answer
 *			to the query is not there.
 *		answer calls proces_a_query again to process another
 *			query.
 *
 *	process_a_query and answer are mutually recursive. The book
 *		remarks that this would be frowned on in most languages
 *		but not in prolog. The only reason this is so (and it
 *		isn't frowned on in all languages) is because each
 *		recursive call uses some stack space. This means that
 *		there would be a limit on how long the program could run
 *		since it would not release the stack space until it
 *		processed a stop command. These clauses are almost
 *		in tail-recursive form (meaning that the recursion
 *		is the last thing done and no state needs be saved).
 *		In fact, they really are tail-recursive since we have
 *		no clause following the recursion AND we never intend
 *		process_a_query or answer to be 'backtracked through', although
 *		capital_of may be.
 *		
 *		
 */


start:- consult('kb.pl'),
	nl,
	write('Type the names in lower case, followed by a period.'),
	% write('Type "stop." to quit.'), nl,
	write('Enter end of file to quit.'), nl,
	process_a_query.		% start loop

process_a_query:-write('State? '),
		read(State),
		answer(State).
	

% Three cases

answer(end_of_file):-
		copyFile('kb.pl', 'kb_bak.pl'),
		write('Save the kb ...'), nl,
		tell('kb.pl'),		% this is destructive: probably
                            % better form to copy the file
                            % first. 
		write(':- dynamic(capital_of/2).'), nl,
		listing(capital_of),
		told,
		write('Done.'), nl.

answer(State):-	capital_of(State, City),
		write('The capital of '),
		write(State),
		write(' is '),
		write(City), nl, nl,
		process_a_query.

answer(State):-	write('I do not know the capital of that state.'), nl,
		write('Please tell me.'), nl,
		write('Capital? '),
		read(City),
		write('Thanks.'), nl, nl,
		assertz(capital_of(State, City)),
		process_a_query.




/* Just like copy from examples, but we explicitly put in the period
 * and the newline. */

copyFile(X,Y):-     see(X), tell(Y),
                read(A), copyLine(A).

copyLine(end_of_file):- nl, seen, told.
copyLine(A):-           write(A), write('.'), nl, read(B), copyLine(B).            


