%C=[3*sin(a) 3*cos(a)]';
%dy-4*dx/3=0
%-ax*0.4-ay*0.4=3*cos(a)*1-3*sin(a)*0.4
%-ax-dx=-3*sin(a)
%-ay-dy=-3*cos(a)

a=-pi/2:0.1*pi/180:pi/2;
A=a;
D=a;
j=1;
for i=a
    M=[0 0 -4/3 1; -0.4 -0.4 0 0; -1 0 -1 0; 0 -1 0 -1];
    b=[0 5*cos(i)*1-5*sin(i)*0.4 -5*sin(i) -5*cos(i)]';
    X=linsolve(M,b);
    ax=X(1);
    ay=X(2);
    dx=X(3);
    dy=X(4);
    A(j)=norm([ax ay]');
    D(j)=norm([dx dy]');
    j=j+1;
end
plot(a,A,'r',a,D,'c')
xlabel alpha(-90,90)
ylabel force(kN)
legend A D
disp 'max of A is' 
Am=max(A);
disp(Am)
Dm=max(D);
disp 'max of D is' 
disp(Dm)
