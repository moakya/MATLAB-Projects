function [U_new, L_new] = replacement_lu(U, i, j, s, L)
    
    [m, n] = size(U);
    L(i, j) = s;
    for k = 1:n
        U(i, k) = U(i, k) - (s * U(j, k));
    end
    
    U_new = U;
    L_new = L;
    
end
    
    