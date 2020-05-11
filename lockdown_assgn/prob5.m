mu1=0:0.0001:1;
mu2=0.5;
alpha=[15*pi/180 20*pi/180 25*pi/180] ;
M=600;
g=9.81;
P=mu1;
theta=atan2(mu1,1);
for i=alpha
    k=1
    for j=mu1
        P(k)=mu2*M*g*sqrt(j^2+1)*sin(i+2*theta)/(cos(i+theta)*(1-j*mu2));
        k=k+1;
    end
    plot(mu1,P)
    hold on
end
xlabel mu1
ylabel P
legend 15 20 25
    