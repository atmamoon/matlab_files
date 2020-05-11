syms a ax ay dx dy;
%C=[3*sin(a) 3*cos(a)]';
%dy-4*dx/3=0
%-ax*0.4-ay*0.4=3*cos(a)*1-3*sin(a)*0.4
%-ax-dx=-3*sin(a)
%-ay-dy=-3*cos(a)
M=[0 0 -4/3 1; -0.4 -0.4 0 0; -1 0 -1 0; 0 -1 0 -1];
b=[0 3*cos(a)*1-3*sin(a)*0.4 -3*sin(a) -3*cos(a)]';
X=linsolve(M,b)
ax=X(1);
ay=X(2);
dx=X(3);
dy=X(4);
A=norm([ax ay]')
D=norm([dx dy]')
Af=@(a) A
%[ax ay dx dy]'= X
plot(A,a,'r',D,a,'c')
xlabel alpha(-90,90)
ylabel force(kN)
legend A D

