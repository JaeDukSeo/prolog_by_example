/*
Insert an element at a given position into a list.
Example:
?- insert_at(alfa,[a,b,c,d],2,L).
L = [a,alfa,b,c,d]

*/

% 1.1 Recursive method base case 
insert_recursive(Element,[H|T],1,[Element,H|T]).
insert_recursive(Element,List,Index,Result):-
   	% 1.2. Split and decrease the INdex for base case
    List = [H|T],
    Index2 is Index -1,
    % 1.3 Call the recursive method
    insert_recursive(Element,T,Index2,Result2),
    % 1.4 append accordingly
    Result = [H|Result2].

% 2.1 Acc - put the empty list at the back 
acc_insert(Element,List,Index,Result):-
    acc_insert2(Element,List,Index,Result,[]).

% 2.2 Acc base case -> when index is 1
acc_insert2(Element,[H|T],1,Result,Acc):-
    % 2.3 Create a Temp list with Element in front of the list
    append([Element],[H|T],Temp),
    % 2.4 Make the Reulst list by appending Acc and Temp
    append(Acc,Temp,Result).

% 2.5 Acc when index is not 1
acc_insert2(Element,[H|T],Index,Result,Acc):-
    % 2.6 Decrease index and append accordingly and call again
    Index2 is Index -1,
    append(Acc,[H],Acc2),
	acc_insert2(Element,T,Index2,Result,Acc2).

% 3.1 WAYY much more interesting method to insert 
fun_insert(Element,List,Index,Result):-
    % 3.2 Decrease INdex and create empty array
    Index2 is Index -1,
    length(Front,Index2),
    
    % 3.3 Append accordingly.
    append(Front,Back,List),
    append(Front,[Element],Temp),
    append(Temp,Back,Result).
    
    
    
    
    
    
    
