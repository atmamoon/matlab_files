syms a by ax L W k;
%-ax+by=W
%-L*sin(a)*ax+by*L*cos(a)=W*L*cos(a)/2
% k*delta x =-ax
% l*cos(a)=L- delta x
% assuming unstretched length of spring is L
x=linsolve([-1 1; -L*sin(a) L*cos(a)],[W W*L*cos(a)/2]');
ax=x(1)
by=x(2)
k=-ax/(L*(sin(a)+cos(a)-1));

a=15*pi/180:0.1*pi/180:40*pi/180;
W=20;
L=50;
k=a;
j=1;
for i=a
    x=linsolve([-1 1; -L*sin(i) L*cos(i)],[W W*L*cos(i)/2]');
    ax=x(1);
    by=x(2);
    k(j)=-ax/(L*(cos(i)+sin(i)-1));
    j=j+1;
end
plot(a*180/pi,k,'r')
xlabel alpha
ylabel k(spring constant)
j=1;
for i=k
    if i<0.81 AND i>0.7999
        disp a(j)
    end
    j=j+1;
end
