function [ y,N ] = Newton( x0,f,df,tol,itmax )
x1=x0-f(x0)./df(x0);
m=x1-x0;
N=1
while (m>tol) && (N<itmax)
    x0=x1
    x1=x0-f(x0)./df(x0);
    m=x1-x0;
    N=N+1;
end
y=x1;
end





