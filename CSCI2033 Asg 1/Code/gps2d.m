%{
Pre: Takes in coords a, b and c, and 3 distances ra, rb, rc

Descr: The function creates a matrix and a vector and solves them 
    using the solve function

Post: Returns the final matrix/vector.
%}
function p = gps2d (a, b, c, ra, rb, rc)
    %create the matrix
    M = [2*(a(1,1) - b(1,1)), 2*(a(2,1) - b(2,1));
        2*(b(1,1) - c(1,1)), 2*(b(2,1) - c(2,1))];
    
    %create the vector
    V = [(rb^2 - ra^2 + a(1,1)^2 +a(2,1)^2 - b(1,1)^2 - b(2,1)^2);
         (rc^2 - rb^2 + b(1,1)^2 + b(2,1)^2 - c(1,1)^2 - c(2,1)^2)];
     
    A = solve (M ,V); %solve the matrix and vector
    
    p = A;
end