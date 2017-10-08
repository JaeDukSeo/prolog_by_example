/* http://www.ic.unicamp.br/~meidanis/courses/mc336/2009s2/prolog/problemas/
 * 
 * github - jaedukseo - 
 * 
 * split([a,b,c,d,e,f,g,h,i,k],3,F,B).
 *  */




split1(L,I,F,B):-
    length(F,I),
    append(F,B,L).


split2(L1,0,[],L1).
split2([H|T],I,F,B):-
    I2 is I - 1,
    split2(T,I2,F1,B),
    F = [H|F1].

