
% Name: J Bolton
% Date: 5.2.11



%---------------------------------------------------------------------%
%
% play/0 is the main predicate for the human-player version of the
% puzzle. It calls initialise_game/1 to generate a random board, calls
% display_game/1 to display the initial game board, then calls play/2 to
% actually play the puzzle.
%

   play :-
      initialise_game(Game),
      display_game(Game),
      play(Game,0).


%---------------------------------------------------------------------%
%
% play/2 is the main loop for the human-player version of the puzzle.
% 

% The base case is where the current board matches the goal state.

   play(Game,Count) :-
	game_over(Game), 
	write('Well done, puny human! You took an embarrassing '),
	write(Count),
	write(' moves'), nl, !.


% Otherwise, we get the player's next move, update the game board,
% display the new game board, and then recurse to do it all again.

   play(Game,Count) :-
	choose_move(Move),
	update_game(Game, Move, NewGame),
	display_game(NewGame),
	Count1 is Count +1,
	play(NewGame,Count1).


%---------------------------------------------------------------------%
%
% solve/0 is the main predicate for the automatic solver version 
% of the puzzle. It initialises the random number generator, calls 
% initialise_game/1 to generate a random board, calls display_game/1
% to display the initial game board, calls agenda_item/3 to construct
% the initial agenda item, then calls solve/3 with an initial agenda
% and an empty 'closed' list. One solve/3 finishes, display the list
% of moves that it has found.
%

   solve :-
      initialise_game(Game),
      display_game(Game),
      agenda_item(Game, [], FirstAgendaItem),
      solve([FirstAgendaItem], [], Moves),
      write(Moves).  



%---------------------------------------------------------------------%
%
% solve/3 is the main loop for the automatic solver version of 
% the puzzle.
% 

% The base case is where the board state in the first agenda item 
% matches the goal state. Once this happens, display the solution and
% then return the list of moves as the result.

   solve([FirstAgendaItem | _], _, Moves) :-
	agenda_item(Game, Moves, FirstAgendaItem),
	game_over(Game), 
	display_solution(Game,Moves),
	!.


% Otherwise, generate all of the possible moves from the first
% agenda item, keep only the worthwhile ones (the ones which have
% a board state we haven't generated yet), add the worthwhile
% new agenda items to the agenda, and recurse, moving the agenda
% item we've just looked at to the closed list.

   solve([FirstAgendaItem | RestOfAgenda], AlreadyTried, Moves) :-
      get_possible_moves(FirstAgendaItem, PossibleMoves),
      get_worthwhile_moves(PossibleMoves, RestOfAgenda, AlreadyTried,
                           WorthwhileMoves),
      update_agenda(WorthwhileMoves, RestOfAgenda, NewAgenda),
      solve(NewAgenda, [FirstAgendaItem | AlreadyTried], Moves).

% display_solution/2 takes the list of moves generated by solve/3 and
% writes them to the screen as game boards followed by chosen 
% moves. This allows you to see the solution. It uses update_game/3 and
% display_game/1 which you will have written in the first part of the
% assignment.

display_solution(_,[]).
display_solution(Board,[H|T]):-
	update_game(Board, H, NewBoard),
	display_solution(NewBoard, T),
	write('Push '), write(H), nl,
	display_game(Board).

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                                                                     %
% Don't modify any of the code above this point. Put your code below, %
% in the marked areas.                                                %
%                                                                     %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


%---------------------------------------------------------------------%
% The board is represented by a list of length 9 with 0=o and 1=x
% initialise_game(X) unifies X to a board with a random arrangement of x's
% and o's. Hurrah!

initialise_game([A,B,C,D,E,F,G,H,I]) :-
    A is random(2), B is random(2), C is random(2),
    D is random(2), E is random(2), F is random(2),
    G is random(2), H is random(2), I is random(2).

%---------------------------------------------------------------------%
% Put your code for display_game/1 here:

display_game([A,B,C,D,E,F,G,H,I]) :-
    write([A,B,C]), nl,
    write([D,E,F]), nl,
    write([G,H,I]), nl.

%---------------------------------------------------------------------%
% Put your code for game_over/1 here:

game_over(Board) :- 
    Board == [0,0,0,0,0,0,0,0,0].


%---------------------------------------------------------------------%
% Put your code for choose_move/1 here:

choose_move(Square) :- 
    write('Enter your move, vile human!'),
    read(Square),
    number(Square),
    Square < 10, Square > 0.


%---------------------------------------------------------------------%
% Put your code for update_game/3 here:
% I am sure there is a much better way of doing this. Oh well.

update_game([A,B,C,D,E,F,G,H,I], 1, [FA,FB,C,FD,FE,F,G,H,I]) :-
    flip_square(A,FA), flip_square(B,FB), flip_square(D,FD),
    flip_square(E,FE).
update_game([A,B,C,D,E,F,G,H,I], 2, [FA,FB,FC,D,E,F,G,H,I]) :-
    flip_square(A,FA), flip_square(B,FB), flip_square(C,FC).
update_game([A,B,C,D,E,F,G,H,I], 3, [A,FB,FC,D,FE,FF,G,H,I]) :-
    flip_square(B,FB), flip_square(C,FC), flip_square(E,FE),
    flip_square(F,FF).
update_game([A,B,C,D,E,F,G,H,I], 4, [FA,B,C,FD,E,F,FG,H,I]) :-
    flip_square(A,FA), flip_square(D,FD), flip_square(G,FG).
update_game([A,B,C,D,E,F,G,H,I], 5, [A,FB,C,FD,FE,FF,G,FH,I]) :-
    flip_square(B,FB), flip_square(D,FD), flip_square(E,FE),
    flip_square(F,FF), flip_square(H,FH).
update_game([A,B,C,D,E,F,G,H,I], 6, [A,B,FC,D,E,FF,G,H,FI]) :-
    flip_square(C,FC), flip_square(F,FF), flip_square(I,FI).
update_game([A,B,C,D,E,F,G,H,I], 7, [A,B,C,FD,FE,F,FG,FH,I]) :-
    flip_square(D,FD), flip_square(E,FE), flip_square(G,FG),
    flip_square(H,FH).
update_game([A,B,C,D,E,F,G,H,I], 8, [A,B,C,D,E,F,FG,FH,FI]) :-
    flip_square(G,FG), flip_square(H,FH), flip_square(I,FI).
update_game([A,B,C,D,E,F,G,H,I], 9, [A,B,C,D,FE,FF,G,FH,FI]) :-
    flip_square(E,FE), flip_square(F,FF), flip_square(H,FH),
    flip_square(I,FI).

flip_square(0,F) :-
    F is 1.
flip_square(1,F) :-
    F is 0.

%---------------------------------------------------------------------%
% Put your code for agenda_item/3 here:

agenda_item(Board, Moves, [Board,Moves]).


%---------------------------------------------------------------------%
% Put your code for get_possible_moves/2 here:

get_possible_moves([],[]).
get_possible_moves([Board,Moves], P) :-
    findall([Y,[X|Moves]],update_game(Board,X,Y),P).

%---------------------------------------------------------------------%
% Put your code for get_worthwhile_moves/4 here:

get_worthwhile_moves(Items, Current, Closed, Worthwhile) :-
    get_boards(Closed,[],ClBoards),
    get_boards(Current,[],CurrBoards),
    findall(Pick, 
        (agenda_item(B,_,Pick),
        member(Pick,Items),
        not(member(B,ClBoards)),
        not(member(B,CurrBoards))),
        Worthwhile).

get_boards([], Bs, Bs).
get_boards([Agenda|Rest], Bs, X) :-
    agenda_item(Board,_,Agenda),
    get_boards(Rest,[Board|Bs],X).


%---------------------------------------------------------------------%
% Put all of the versions of your code for update_agenda/3 here.
% Leave only one version uncommented when you submit. You can decide
% which to use.

% Add to end
% update_agenda(Items, New, Appended) :-
%     append(Items, New, Appended).

% Add to beginning - waaaay faster!
update_agenda(Items, New, Appended) :-
    append(New, Items, Appended).

%---------------------------------------------------------------------%
% solve/1 which can solve the puzzle from a specified start state.  
% Game must be a board state in your chosen representation. You 
% can use this to evaluate the different versions of update_agenda/3

solve(Game):- 
	display_game(Game),
	agenda_item(Game, [], FirstAgendaItem),
	solve([FirstAgendaItem], [], Moves), 
	write(Moves).


%---------------------------------------------------------------------%
% Put your report on the behaviour of the different versions of
% update_agenda/3 here, between the comment delimiters:

/*




*/




