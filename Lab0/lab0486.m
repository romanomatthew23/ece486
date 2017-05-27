%%Matthew Romano ECE 486 Lab 0
%steady-state value = .3318
s = tf('s');
SYS = 1/(s+1)/(s^2+.5*s+3);
[y,t] = step(SYS);
max = max(y)
plot(t,y);
title('M\alphatthe\omega Rom\alphano \pi \zeta')
xlabel('time(s)')
ylabel('value')
grid on
t2 = 0:.1:19;
z = .33 * (1 - exp(-.5 * t2));
hold on
plot(t2,z)
legend('step response','other one')
hold off
