function [v]=calcul_v(N)
h=1/N
f=calcul_f(N)
A=calcul_A(N)
v=h^2*(A\f)
v=[0;v;0]
v=v'