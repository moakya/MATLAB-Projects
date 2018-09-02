%{
Pre: Takes in Matrix A

Descr: The function manipulates the matrix 
    and turns it into RREF.

Post: Returns the edited matrix.
%}
function R = my_rref (A)
    [m, n] = size (A);  %get size of matrix
    k = 1;  %default row num
    l = 1;  %default col num
    
    %making sure that the pivot is correct
    while (k >= 1 && k <= m && l >= 1 && l <= n)
        b = 1;
        if (l > 1) 
            b = l + 1;
        end
       
        p = k;
        %checking for max value under the pivot inclusively
        for i = b:(m-1) 
            if (abs(A(i,l)) < abs(A(i+1,l)))
                p = i + 1;
            end % end if
        end %end for
        
        %changing the rows
        A = interchange (A, k, p);
        
        %comparing values to see whether they are zero
        if (abs(A(k,l)) < 10^(-12))
            l = l + 1;
            
        else
           A = scaling (A, k, (1/A(k,l)));
           
           for i = [1:k-1 k+1:m]
               A = replacement (A, i, k, (-A(i,l)/A(k,l)));
           end %end for
           
           k = k + 1;   %increment k
           l = l + 1;   %increment l
           
        end % end if     
    end %end outer while
    R = A;
end