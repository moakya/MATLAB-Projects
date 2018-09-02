function [L, U, P] = my_lup(A)
    [m,n] = size(A);
    L = eye(n);
    P = eye(n);
    U = A;
    for i = 1:n-1
        j = i; %assuming max value at i
        for x = i:n
            if (abs(U(x, i)) > abs(U(j, i)))
                j = x;
            end 
        end
        [U, L, P] = interchange_lup (U, i, j, L, P);
        if abs(U(i,i)) < 10^-12
            return;
        end
        for k = i+1:n
            p = U(k,i)/U(i,i);
            [U, L] = replacement_lu (U, k, i, p, L);
        end
    end
end