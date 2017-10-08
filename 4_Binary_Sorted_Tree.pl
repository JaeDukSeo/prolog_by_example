/*
	sorted binary treeu query 


	tree(C,L,R).
    tree(1,nil,nil).
    
    sorted(Return_List,tree(c)).
    
    tree(Center,Left,Right).
    tree(8,tree(3,tree(1,nil,nil),tree(6,nil,nil)),tree(10,nil,tree(14,nil,nil))).

*/

sorted([],nil).
sorted(ReturnList,tree(C,L,R)):-
    
    % 1. Query the most left most since we know that it 
    % is smaller then the center - [1]
    sorted(L1,L),
    
    % 2. Append the left most element to the center element
    % so [1,3]
    append(L1,[C],Temp),
    
    % 3. Now query the right element - [6]
    sorted(L2,R),
    
    % 4. Append it to [1,3] - [6]   
    % Hence the result [1,3,6] 
    append(Temp,L2,ReturnList).
    
    
    
    
    
    
    
    
    
