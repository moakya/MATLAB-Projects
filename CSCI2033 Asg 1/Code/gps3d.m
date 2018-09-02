%{
Pre: Takes in coords a, b, c, and d and 4 distances ra, rb, rc, rd

Descr: The function creates a matrix and a vector and solves them 
    using the solve function

Post: Returns the final matrix/vector.
%}
function p = gps3d(a, b, c, d, ra, rb, rc, rd)
    %create the matrix 
    M = [2*(a(1,1) - b(1,1)), 2*(a(2,1) - b(2,1)), 2*(a(3,1) - b(3,1));
         2*(b(1,1) - c(1,1)), 2*(b(2,1) - c(2,1)), 2*(b(3,1) - c(3,1));
         2*(c(1,1) - d(1,1)), 2*(c(2,1) - d(2,1)), 2*(c(3,1) - d(3,1))];
    
    %create the final vector
    V = [(rb^2 - ra^2 + a(1,1)^2 + a(2,1)^2 + a(3,1)^2 - b(1,1)^2 - b(2,1)^2 - b(3,1)^2);
         (rc^2 - rb^2 + b(1,1)^2 + b(2,1)^2 + b(3,1)^2 - c(1,1)^2 - c(2,1)^2 - c(3,1)^2);
         (rd^2 - rc^2 + c(1,1)^2 + c(2,1)^2 + c(3,1)^2 - d(1,1)^2 - d(2,1)^2 - d(3,1)^2)];
     
    %solve for the multiplier vector 
    A = solve (M ,V);
    
    p = A;
end