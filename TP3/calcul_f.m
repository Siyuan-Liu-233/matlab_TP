function [f]=calcul_f(N)
x=0+1/N:1/N:1-1/N
f=4*pi^2*sin(2*pi*x)
f=f'