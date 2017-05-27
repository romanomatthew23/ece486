%% lab 6
%%
%V05 = V;
%time05 = tout;
plot(time05,V05);

%%
%V5 = V;
%time5 = tout;
plot(time5,V5);

%%
%V50 = V;
%time50 = tout;
plot(time50,V50);
%%
%V05sat = V;
%time05sat = tout;
plot(time05sat,V05sat);

%%
%V5sat = V;
%time5sat = tout;
plot(time5sat,V5sat);

%%
%V50sat = V;
%time50sat = tout;
plot(time50sat,V50sat);

%%
subplot(3,1,1)
plot(time05,V05,'r');
hold on
plot(time05sat,V05sat);
hold off
title('6.1: Effects of Saturation on Response');
xlabel('Time(s)');
ylabel('Voltage(V)');
legend('Unsaturated','Saturated');
subplot(3,1,2)
plot(time5,V5,'r');
hold on
plot(time5sat,V5sat);
hold off
xlabel('Time(s)');
ylabel('Voltage(V)');
legend('Unsaturated','Saturated');
subplot(3,1,3)
plot(time50,V50,'r');
hold on
plot(time50sat,V50sat);
hold off
xlabel('Time(s)');
ylabel('Voltage(V)');
legend('Unsaturated','Saturated');

%%
%Part 2!!!

%%
%last part
omega =dsa(:,1);
data=dsa(:,2)+i*dsa(:,3);
figure(3)
subplot(2,1,1)
semilogx(omega,20*log10(abs(data)));
title('DSA fresp data Bode Plot (Magnitude)');
ylabel('Magnitude (dB)');
subplot(2,1,2)
semilogx(omega,(phase(data)*360/2/pi));
title('(Phase)');
xlabel('w(rad/s)');
ylabel('Phase (degrees)');