/*

Find the K'th element of a list.
The first element in the list is number 1.
Example:
?- element_at(X,[a,b,c,d,e],3).
X = c

find_recursive(X,List,I).

fun_find(X,L,I).

*/

% 1.1 Element with recursive call
find_recursive(X,[X|T],1).
find_recursive(X,L,I):-
	% 1.2 Split
    L  = [H|T],
    % 1.3 Decrease to reach base case
    I2 is I -1,
    % 1.4 Recursive
    find_recursive(X,T,I2).



% 2.1 More interesting find
fun_find(X,L,I):-
    % 2.2 Create an empty list
    length(Front,I),
    % 2.3 Using append split the list
    append(Front,Back,L),
    % 2.4 Get the Front List - > reverse it
    reverse(Front,ReverseFront),
    % 2.5 Get the head of the list.
    ReverseFront = [X|T].




