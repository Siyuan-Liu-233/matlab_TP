function [x1]=Descente(L,y)
n=size(y);
x1=zeros(size(y));
n=n(1);
for i=1:n
    x1(i)=y(i)-L(i,1:i-1)*x1(1:i-1)
end

        