clear all;
Vs=12.0;
for pp=1:10000
    t(pp)=(pp-1)*2.0/(50*10000);
    v1(pp)=4/pi*Vs*sin(2*pi*50*t(pp));
    v3(pp)=4/(3*pi)*Vs*sin(2*pi*150*t(pp));
    v5(pp)=4/(5*pi)*Vs*sin(2*pi*250*t(pp));
    v7(pp)=4/(7*pi)*Vs*sin(2*pi*350*t(pp));
end;
figure(1)
plot(t,v1,t,v3,t,v5,t,v7);
vtotal=v1+v3+v5+v7;
figure (2)
plot(t,vtotal);
vsecfund=v1*21;
vsecsq=vtotal*21;
figure (3)
plot(t,vsecfund,t, vsecsq);