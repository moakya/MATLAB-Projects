function [L, U] = my_lu(A)
    [m,n] = size(A);
    L = eye(n);
    U = A;
    for i = 1:n-1
        if abs(U(i,i)) < 10^-12
            return;
        end
        for k = i+1:n
            p = U(k,i)/U(i,i);
            [U, L] = replacement_lu (U, k, i, p, L);
        end
    end 
end