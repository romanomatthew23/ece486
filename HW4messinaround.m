one = tf([1],[1 .104 1]);
[y1,t1] = step(one);
plot(t1,y1)
%%
%4.26a) disturbance rejection
a = .5*.1;
b = .1 + .5;
c = .5 + 99
two = tf([.5 1],[.05 .6 99.5]);
[y2,t2] = step(two);
plot(t2,y2)
yss = y2(end)
%%
%4.26 b) tracking ref input
a = .05;
b = .1 + .5;
c = 1 + 99;
three = tf([99],[.05 .1 100]);
[y3,t3] = step(three);
plot(t3,y3)
yss = y3(end)
%%
StepResponseMetrics(y1,t1,1,1)
%%
StepResponseMetrics(y2,t2,1,1)
%%
StepResponseMetrics(y3,t3,1,1)

%%
%3.33

t_r = 1.5;
w_n = 1.789/t_r;
T = t_r/1.6;
z = .89;

trans = tf([T/w_n/w_n w_n*w_n],[1 2*z*w_n w_n*w_n]);
[y,t] = step(trans);
plot(t,y);
hold on
