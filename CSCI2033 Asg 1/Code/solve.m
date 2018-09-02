%{
Pre: Takes in Matrix A, and another matrix b
Descr: The function solves the matrix to see what the initial 
    mutiplied matrix was.
Post: Returns the multiplier.
%}
function x = solve (A, b)
    augmented_matrix = [A b];
    R = rref (augmented_matrix);
    x = R(:, end);
end