%{
Pre: Takes in Matrix A, and two ints
    i, j for row numbers

Descr: The function swaps the rows
    of matrix A using the rows numbers.

Post: Returns the edited matrix.
%}
function B = interchange (A, i, j)
    [x, y] = size (A);  %determine actual size of the matrix
    
    if (i > 0 && i <= x && j > 0 && j <= y)
        var = A(i, :);  %assign var to one of the rows
        A(i, :) = A(j, :); %reassign one of the rows to the other
        A(j, :) = var;  %reassign the other row
        B = A;
    else 
        disp "Invalid input please check the row and col num";  
    end
end