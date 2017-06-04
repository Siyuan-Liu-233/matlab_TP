function [L,U]=monLU(x)
n=size(x,1);
L=eye(n);
U=zeros(n);
for k=1:n
    for j=k:n
        U(k,j)=x(k,j)-L(k,1:k-1)*U(1:k-1,j);
    for i=k+1:n
        if U(k,k)~=0
            L(i,k)=(x(i,k)-L(i,1:k-1)*U(1:k-1,k))/U(k,k);
        else 
            L(i,k)=1
        end
    end
    end
end



