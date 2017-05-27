% prelab 4
%part b
load('prelab4.mat');
time = Elect(:,1);
voltage = Elect(:,2);
plot(time, voltage);
%linearize the data
%%
%only plot the noncourrpting data points (non infinity)
Vss = voltage(end);
voltage_linear = log(Vss - voltage); 
plot(time(1:200),voltage_linear(1:200));
coeffs = polyfit(time(1:200),voltage_linear(1:200),1);
T_e = -1/coeffs(1);
R_a = 2.5;
R_s = 3.3;
L = T_e*(R_a + R_s)

%%
%part d mechanical time constant
load('prelab4.mat');
time_2 = Iner(:,1);
w = Iner(:,2);
plot(time_2(1:200), w(1:200));
%%
w_linear = log(w);
plot(time_2(1:200),w_linear(1:200));
xlabel('time');
ylabel('angular velocity');
title('part d) determination of the mechanical time constant');
