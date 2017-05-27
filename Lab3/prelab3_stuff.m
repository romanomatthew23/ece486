k = 1.067;
kr = 1;
kd = .031755;
Z = (15 + 60*k*kd)/(2*sqrt(60*k +36));

b = 15 + 60*k*kd;
c = 36 + 60*k;
SYS = tf([4 12],[1 15 c]);
[y tout] = step(SYS);
yssval = y(end)
plot(tout, y);

%%
k = 20000000;
kd = 2000000000;
a = 1;
b = 15 + 60*k*kd;
c = 60*k + 36;
posroot = (-b+sqrt(b*b - 4*a*c))/(2*a)
negroot = (-b-sqrt(b*b - 4*a*c))/(2*a)