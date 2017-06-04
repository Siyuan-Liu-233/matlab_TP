A1=[1 1 2;-1 -2 3;3,-7,4]
[L1,U1]=monLU(A1)
b1=[8;1;10]
[y1]=Descente(L1,b1)
[x1]=Remontee(U1,y1)


A2=[1 -1 2 -1;2 1 -2 -2;-1 2 -4 1;3 0 0 -3]
[L2,U2]=monLU(A2)
b2=[-1;-2;1;-3]
[y2]=Descente(L2,b2)
[x2]=Remontee(U2,y2)

