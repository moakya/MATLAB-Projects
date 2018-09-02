%{
Pre: Takes in Matrix A, an int
    i representing the row number,
    and s, a scalar

Descr: The function multiplies the row i
    in the matrix by the scalar.

Post: Returns the edited matrix.
%}
function B = scaling (A, i, s)
    [x, ~] = size (A);  %determine actual size of the matrix
    
    if (i > 0 && i <= x) 
        A(i, :) = s *  A(i, :); %multiply row i by s
        B = A;
    
    else 
        disp "Invalid input please check the row num";  
    end
end