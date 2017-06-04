function [x,sol_exact]=calcul_sol_exact(N)
x=0:1/N:1
sol_exact=-sin(2*pi*x)