function [x]=Remontee(U,y)
[n,n]=size(U);
x=zeros(size(y));
i=n;
while (i>0)
    if U(i,i)~=0;
    x(i)=(y(i)-U(i,i+1:n)*x(i+1:n))/U(i,i);
    else
        x(i)=0;
    end
    i=i-1;
end

