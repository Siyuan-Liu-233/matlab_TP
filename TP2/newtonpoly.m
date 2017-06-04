function [y]=newtonpoly(a,b,c,d,x0,tol,itmax)
f=[a,b,c,d]
df=polyder(f)
x1=x0-polyval(f,x0)./polyval(df,x0);
m=x1-x0;
N=1
k=1
s=[0,0,0]
while k<=3
    while (m>tol) && (N<itmax)
        x0=x1
        x1=x0-polyval(f,x0)./polyval(df,x0);
        N=N+1
    end
    N=1
    s(k) = x1
    f=deconv(f,[1,-x1])
    df=polyder(f)
    k=k+1
end
y=s
end
    