function [L,U,D]=extraire_mat(A)
     L=tril(A,-1)
     U=triu(A,1)
     D=diag(diag(A))

     
endfunction
