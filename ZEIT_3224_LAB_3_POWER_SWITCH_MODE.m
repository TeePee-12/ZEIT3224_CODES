clear all

%% 0.1UF
fig1=figure(1);
tiledlayout(3,1)
sgtitle('Simulated Performance of Switch Mode Power Supply, C_{f} = 0.1\mu F')
nexttile;
%plot D4 .1uF
data = readmatrix('D4u1F.txt');
time = data(:, 1);
vcap = data(:, 2);
vswitch = data(:, 3);
plot(time, vswitch, DisplayName='V_{Switch}');
hold on;
plot(time, vcap, DisplayName='V_{Cap}');
hold off;
title('D=0.4')
xlabel('Time [S]')
ylabel('Voltage [V]')
legend;
%plot D5 .1uF
nexttile
data = readmatrix('D5u1F.txt');
time = data(:, 1);
vcap = data(:, 2);
vswitch = data(:, 3);
plot(time, vswitch, DisplayName='V_{Switch}');
hold on;
plot(time, vcap, DisplayName='V_{Cap}');
hold off;
title('D=0.5')
xlabel('Time [S]')
ylabel('Voltage [V]')
legend;
%plot D6 .1uF
nexttile
data = readmatrix('D6u1F.txt');
time = data(:, 1);
vcap = data(:, 2);
vswitch = data(:, 3);
plot(time, vswitch, DisplayName='V_{Switch}');
hold on;
plot(time, vcap, DisplayName='V_{Cap}');
hold off;
title('D=0.6')
xlabel('Time [S]')
ylabel('Voltage [V]')
legend;
saveas(fig1,'0u1F_Plots.svg');

%% .47UF
fig2=figure(2);
tiledlayout(3,1)
sgtitle('Simulated Performance of Switch Mode Power Supply, C_{f} = 0.47\mu F')
nexttile;
%plot D4 .1uF
data = readmatrix('D4u47F.txt');
time = data(:, 1);
vcap = data(:, 2);
vswitch = data(:, 3);
plot(time, vswitch, DisplayName='V_{Switch}');
hold on;
plot(time, vcap, DisplayName='V_{Cap}');
hold off;
title('D=0.4')
xlabel('Time [S]')
ylabel('Voltage [V]')
legend;
%plot D5 .1uF
nexttile
data = readmatrix('D5u47F.txt');
time = data(:, 1);
vcap = data(:, 2);
vswitch = data(:, 3);
plot(time, vswitch, DisplayName='V_{Switch}');
hold on;
plot(time, vcap, DisplayName='V_{Cap}');
hold off;
title('D=0.5')
xlabel('Time [S]')
ylabel('Voltage [V]')
legend;
%plot D6 .1uF
nexttile
data = readmatrix('D6u47F.txt');
time = data(:, 1);
vcap = data(:, 2);
vswitch = data(:, 3);
plot(time, vswitch, DisplayName='V_{Switch}');
hold on;
plot(time, vcap, DisplayName='V_{Cap}');
hold off;
title('D=0.6')
xlabel('Time [S]')
ylabel('Voltage [V]')
legend;
saveas(fig2,'0u47F_Plots.svg');

%% 4.7UF
fig3=figure(3);
tiledlayout(3,1)
sgtitle('Simulated Performance of Switch Mode Power Supply, C_{f} = 4.7\mu F')
nexttile;
%plot D4 .1uF
data = readmatrix('D44u7F.txt');
time = data(:, 1);
vcap = data(:, 2);
vswitch = data(:, 3);
plot(time, vswitch, DisplayName='V_{Switch}');
hold on;
plot(time, vcap, DisplayName='V_{Cap}');
hold off;
title('D=0.4')
xlabel('Time [S]')
ylabel('Voltage [V]')
legend;
%plot D5 .1uF
nexttile
data = readmatrix('D54u7F.txt');
time = data(:, 1);
vcap = data(:, 2);
vswitch = data(:, 3);
plot(time, vswitch, DisplayName='V_{Switch}');
hold on;
plot(time, vcap, DisplayName='V_{Cap}');
hold off;
title('D=0.5')
xlabel('Time [S]')
ylabel('Voltage [V]')
legend;
%plot D6 .1uF
nexttile
data = readmatrix('D64u7F.txt');
time = data(:, 1);
vcap = data(:, 2);
vswitch = data(:, 3);
plot(time, vswitch, DisplayName='V_{Switch}');
hold on;
plot(time, vcap, DisplayName='V_{Cap}');
hold off;
title('D=0.6')
xlabel('Time [S]')
ylabel('Voltage [V]')
legend;
saveas(fig3,'4u7F_Plots.svg');

%% 47UF
fig4=figure(4);
tiledlayout(3,1)
sgtitle('Simulated Performance of Switch Mode Power Supply, C_{f} = 47\mu F')
nexttile;
%plot D4 .1uF
data = readmatrix('D447uF.txt');
time = data(:, 1);
vcap = data(:, 2);
vswitch = data(:, 3);
plot(time, vswitch, DisplayName='V_{Switch}');
hold on;
plot(time, vcap, DisplayName='V_{Cap}');
hold off;
title('D=0.4')
xlabel('Time [S]')
ylabel('Voltage [V]')
legend;
%plot D5 .1uF
nexttile
data = readmatrix('D547uF.txt');
time = data(:, 1);
vcap = data(:, 2);
vswitch = data(:, 3);
plot(time, vswitch, DisplayName='V_{Switch}');
hold on;
plot(time, vcap, DisplayName='V_{Cap}');
hold off;
title('D=0.5')
xlabel('Time [S]')
ylabel('Voltage [V]')
legend;
%plot D6 .1uF
nexttile
data = readmatrix('D647uF.txt');
time = data(:, 1);
vcap = data(:, 2);
vswitch = data(:, 3);
plot(time, vswitch, DisplayName='V_{Switch}');
hold on;
plot(time, vcap, DisplayName='V_{Cap}');
hold off;
title('D=0.6')
xlabel('Time [S]')
ylabel('Voltage [V]')
legend;
saveas(fig4,'47uF_Plots.svg');

%% 470 UF
fig5=figure(5);
tiledlayout(3,1)
sgtitle('Simulated Performance of Switch Mode Power Supply, C_{f} = 470\mu F')
nexttile;
%plot D4 .1uF
data = readmatrix('D4470uF.txt');
time = data(:, 1);
vcap = data(:, 2);
vswitch = data(:, 3);
plot(time, vswitch, DisplayName='V_{Switch}');
hold on;
plot(time, vcap, DisplayName='V_{Cap}');
hold off;
title('D=0.4')
xlabel('Time [S]')
ylabel('Voltage [V]')
legend;
%plot D5 .1uF
nexttile
data = readmatrix('D5470uF.txt');
time = data(:, 1);
vcap = data(:, 2);
vswitch = data(:, 3);
plot(time, vswitch, DisplayName='V_{Switch}');
hold on;
plot(time, vcap, DisplayName='V_{Cap}');
hold off;
title('D=0.5')
xlabel('Time [S]')
ylabel('Voltage [V]')
legend;
%plot D6 .1uF
nexttile
data = readmatrix('D6470uF.txt');
time = data(:, 1);
vcap = data(:, 2);
vswitch = data(:, 3);
plot(time, vswitch, DisplayName='V_{Switch}');
hold on;
plot(time, vcap, DisplayName='V_{Cap}');
hold off;
title('D=0.6')
xlabel('Time [S]')
ylabel('Voltage [V]')
legend;
saveas(fig5,'470uF_Plots.svg');
