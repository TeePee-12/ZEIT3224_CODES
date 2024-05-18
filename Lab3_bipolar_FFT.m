clear all;
format long;
Ts=1e-6;
ns=2048*128;
t1=(0:ns-1)*Ts;
freqa=50.0;
ma=0.5;
vpsin=2.0;
vtri=2.0;
mf=13;
freqfft=1/Ts*(0:ns/2)/ns;
Vd=300.00;
for pp=1:ns
    vsin(pp)=ma*vpsin*sin(2.0*pi*freqa*t1(pp));
end;
triang=vtri*sawtooth(2.0*pi*mf*freqa*t1,1/2);
figure (1)
plot(t1,triang);
for pp=1:ns
    if (vsin(pp)>triang(pp))
        vpulse(pp)=-1.0*Vd;
    else
        vpulse(pp)=Vd;
    end;
end;
figure (2)
plot(t1,vpulse);
yp1=fft(vpulse);
yp5=yp1;
for pp=1:ns/2+1
    if freqfft(pp)>2*50
        yp5(pp)=0.0;
        yp5(ns-pp)=0.0;
    end;
end;
yp2=abs(yp1/ns);
yp3=yp2(1:ns/2+1);
enda=ns/2;
yp3(2:enda-1)=2.0*yp3(2:enda-1);
figure(3)
plot(freqfft,yp3);
for pp=1:ns/2
    if (freqfft(pp)<3.0*mf*freqa)
         freqfft2(pp)=freqfft(pp);
         yp4(pp)=yp3(pp);
    end;
   
end;
figure(4)
plot(freqfft2,yp4);
x5=ifft(yp5);
figure(5)
plot(t1,real(x5));
