our_append([],L2,L2).
our_append(L1,L2,R):-
    L1 = [H|T],
    our_append(T,L2,R1),
    R = [H|R1].


