/*
	
    Reverse a list 
    
    our_reverse_recursive(OriginalList,ReversedList).
    
    our_reverse_acc(OriginalList,ReversedList).
    
    our_reverse_acc_op(OriginalList,ReversedList).
    

*/

% 1.1. The base case of the reverse list
out_reverse([],[]).
out_reverse(L1,R):-
    % 1.2 Split the list into head and tail
    L1 = [H|T],
    % 1.3 Recursive call 
    out_reverse(T,R1),
    % 1.4 Append the resulted list IN FRONT OF THE HEAD!
  	append(R1,[H],R).


% 2.1 Call our acc function
our_reverse_acc(L,R):-
    % 2.2 Make the acc - at the right most -> []
    our_reverse_acc2(L,R,[]).

% 2.3 The basecase of the acc call
our_reverse_acc2([],R,R).
our_reverse_acc2(L,R,Acc):-
    % 2.4 Split the list
	L = [H|T],
    % 2.5 APPEND THE head infront of the ACC!
    append([H],Acc,Acc2),
    % 2.6 CAll the function again
	our_reverse_acc2(T,R,Acc2).


% 3.1 KINDA Optimized revese
our_reverse_acc_op(L,R):-
    % 3.2 Split the list AT THE BEGINNING!!!
    L = [H|T],
    our_reverse_acc_op2(T,R,[H]).

our_reverse_acc_op2([],R,R).
our_reverse_acc_op2(L,R,Acc):-
    % 3.4 Split the list
	L = [H|T],
    % 3.5 APPEND THE head infront of the ACC!
    append([H],Acc,Acc2),
    % 3.6 CAll the function again
	our_reverse_acc_op2(T,R,Acc2).








