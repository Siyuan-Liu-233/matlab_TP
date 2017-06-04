function [A]=calcul_A(N)
A=diag(ones(1,N-2),1)+diag(ones(1,N-2),-1)+(-2).*diag(ones(1,N-1))