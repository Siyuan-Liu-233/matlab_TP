function [x,n]=guass_seidel(A,b,x0,tol,itmax)
    [L,U,D]=extraire_mat(A)
    M=D+L
    N=-U
    x1=M\(N*x0+b)
    m=x1-x0
    n=1
    while (sum(abs(m))>tol) and (n<itmax)
        x0=x1
        x1=M\(N*x0+b)
        m=x1-x0;
        n=n+1
    end
    x=x1
    
endfunction
