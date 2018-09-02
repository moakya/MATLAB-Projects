%{
Pre: Takes in Matrix A, two ints
    i, and j representing the row numbers,
    and s, a scalar

Descr: The function adds row i to the product
        of the scalar and row j, and changes 
        row i to that new row.

Post: Returns the edited matrix.
%}
function B = replacement (A, i, j, s)
    [x, y] = size (A);  %determine actual size of the matrix
    
    if (i > 0 && i <= x && j > 0 && j <= y)
        A(i, :) = A(i, :) + (s * A(j, :));
        B = A; 
    else 
        disp "Invalid input please check the row num";
    end
end