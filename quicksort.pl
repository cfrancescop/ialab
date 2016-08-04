/* Basic quicksort using the first element as pivoting
  ?- quicksort([3,2,5],Result).
  Result = [2,3,5]
 */
quicksort([X|Xs],Ys) :-
  partition(Xs,X,Left,Right), %partition of the list Xs in two sublist Left & Right
  quicksort(Left,Ls), % sort the Left list into the Ls list
  quicksort(Right,Rs), % sort the Right list into the Rs list
  append(Ls,[X|Rs],Ys). % append the list Rs with the list [X|Rs] in the list Ys
/*the empty list is already sorted(fact)*/
quicksort([],[]).

partition([X|Xs],Y,[X|Ls],Rs) :- 
	X =< Y, partition(Xs,Y,Ls,Rs).

partition([X|Xs],Y,Ls,[X|Rs]) :-
  X > Y, partition(Xs,Y,Ls,Rs). 

/*empty list pivoting*/
partition([],Y,[],[]).
/*empty list append*/
append([],Ys,Ys).
/*join two list*/
append([X|Xs],Ys,[X|Zs]) :- append(Xs,Ys,Zs).








