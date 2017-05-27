%we want to create 2 systems, a 2nd order and an approximated first order
%from that using the min poles
z = 1.5
p1 = z - sqrt(z*z - 1);
p2 = z + sqrt(z*z - 1);
pmin = min(p1,p2);
H1 = tf([p1*p2],[1 2*z 1]);
H2 = tf([pmin],[1 pmin]);

[y1,t1] = step(H1);
[y2,t2] = step(H2);
plot(t1,y1,':');
hold on;
plot(t2,y2);
title('\zeta = 1.5');
xlabel('time');
ylabel('response')
hold off
legend('2nd Order','1st Order','location','best');
%%
z = 5
p1 = z - sqrt(z*z - 1);
p2 = z + sqrt(z*z - 1);
pmin = min(p1,p2);
H1 = tf([p1*p2],[1 2*z 1]);
H2 = tf([pmin],[1 pmin]);

[y1,t1] = step(H1);
[y2,t2] = step(H2);
plot(t1,y1,':');
hold on;
plot(t2,y2);
title('\zeta = 5');
xlabel('time');
ylabel('response')
hold off
legend('2nd Order','1st Order','location','best');
%%
z = 40
p1 = z - sqrt(z*z - 1);
p2 = z + sqrt(z*z - 1);
pmin = min(p1,p2);
H1 = tf([p1*p2],[1 2*z 1]);
H2 = tf([pmin],[1 pmin]);

[y1,t1] = step(H1);
[y2,t2] = step(H2);
plot(t1,y1,':');
hold on;
plot(t2,y2);
title('\zeta = 40');
xlabel('time');
ylabel('response')
hold off
legend('2nd Order','1st Order','location','best');