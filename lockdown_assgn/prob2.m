syms d T;
AC=sqrt(0.6^2+(0.32+d)^2);
%M=[0 0 0]';
M=T*0.6*(0.32+d)/AC -0.32*sqrt(1-(T*(0.32+d)/AC)^2);
%M(2)=-1*sqrt(1-M(1)^2);
disp("a. moment about B is-")
disp(norm(M))
d=0.3:0.01:1;
M1=d';
M2=d';
M3=d';
T1=60;
T2=80;
T3=110;
j=1;
for i=d
    AC=sqrt(0.6^2+(0.32+i)^2);
    M=T1*0.6*(0.32+i)/AC -0.32*T1*0.6/AC;
    M1(j)=abs(M);
    M=T2*0.6*(0.32+i)/AC -0.32*T2*0.6/AC;
    M2(j)=abs(M);
    M=T3*0.6*(0.32+i)/AC -0.32*T3*0.6/AC;
    M3(j)=abs(M);
    j=j+1;
end
 plot(d*1000,M1*1000,'r',d*1000,M2*1000,'c',d*1000,M3*1000,'b')
 xlabel d(mm)
 grid on
 legend ('T1=60','T2=80','T3=110')
 ylabel moment(Nmm)