
/* random(N,N2,R).


1. domain - variable
2. rules - constraints
3. Solution

*/

num(0).
num(1).
num(2).
num(3).
num(4).
num(5).
num(6).
num(7).
num(8).
num(9).


our_random(Lower,Upper,R):-
    
    %% 1. con
    num(R),
    
    %% 2. lower
    R >= Lower,
    
    %% 3. upper
    R =< Upper.












