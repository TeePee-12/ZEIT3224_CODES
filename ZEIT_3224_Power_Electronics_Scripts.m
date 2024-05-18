
%% Fundamental Current Through A DC Motor - Fullwave Rectified single phase

fq = 60; %AC input frequency
Vp = 220*sqrt(2); %peak in
Vm = 10; %motor Volts
R = 4.7;
L = 520e-3;

Vdc = (2*Vp)/pi
Idc = (Vdc-Vm)/R
Vfund = (-4*(Vp/(3*pi)))
Ifund = Vfund/(1j*4*pi*fq*L)
abs(Ifund)

%% Three Phase Rectifier
Vin = 110; %RMS phase-phase voltage
Vm = Vin*sqrt(2);
Vrms = 1.6554*Vm
Vdc = 3*(sqrt(3)/pi)*Vm
%% Inductor Current
Vd = 12;
L = 10e-03;
R = 220;


%%

Vpeak = 325; %[V]
Phase = 120; %Degrees
Phase = deg2rad(Phase); %Pase in radians
Cap = 0.1e-6;%farrad
Inductor = 20e-3;%henry
freq=50;%Hz
freq=2*pi*freq; %Freq in rads
T=1/freq; %period
Z_CAP(Cap,freq)
Z_IND(Inductor,freq)
VSINfromPEAK(Vpeak,freq,T/2)
VSINfromRMS(Vrms, freq,T/2)


%% Generate the sine wave of a source Peak voltage
%Requires peak voltage and freq in rads
function [VSIN] = VSINfromPEAK(Vpeak, freq,t)
VSIN = Vpeak*cos(freq*t);
end

%% Generate the sine wave of a source RMS voltage
%Requires RMS voltage and freq in rads
function [VSIN] = VSINfromRMS(Vrms, freq,t)
VSIN = Vrms*cos(freq*t);
end

%% Calculate Phasor of Capacitor 
function [Z] = Z_CAP(C,f)
Z = (-1j)/(2*pi*f*C);
end

%% Calculate Phasor of Inductor
function [Z] = Z_IND(L,f)
Z = (1j*2*pi*f*L);
end