A=[1,2,-2;1,1,1;2,2,1]
b=[1;1;1]
B=[2,-1,1;2,2,2;-1,-1,2]
x0=[0;0;0]
tol=10e-6
itmax=1000
[L,U,D]=extraire_mat(A)
[x1,n1]=jacobi(A,b,x0,tol,itmax)
[x2,n2]=guass_seidel(B,b,x0,tol,itmax)
