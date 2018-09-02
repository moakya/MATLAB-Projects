function [U_new, L_new, P_new] = interchange_lup(U, i, j, L, P)
    
    [m,n] = size(L);
    
    for x = 1:n
        temp = U(i, x);
        U(i,x) = U(j,x);
        U(j,x) = temp;
    end
    
    for x = 1:n
        temp = P(i, x);
        P(i,x) = P(j,x);
        P(j,x) = temp;
    end
    
    if i > 1 
        for k = 1:i-1
            temp = L(i,k);
            L(i,k) = L(j,k);
            L(j,k) = temp;
        end
    end
    
    U_new = U;
    L_new = L;
    P_new = P;
end   