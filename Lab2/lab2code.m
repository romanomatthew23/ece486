% 3. Set the following variables
A = [-6 -25
    1   0];
B = [25
    0];
C = [1 0
    0 1];
D = [0
    0];

% 8. run the simulation and set the output variables as so
sim('lab2statespace')
y1 = y;
y_dot1 = y_dot;
tout1 = tout;
%%
% 9. Make a plot
figure;
subplot(2,1,1)
plot(tout,y);
title('y')
xlabel('time');
ylabel('response to step input')
subplot(2,1,2);
plot(tout,y_dot);
title('y-dot')
xlabel('time');
ylabel('response to step input');

%%
%10 times further left than the poles
z = .6;
a = 30/z;
sim('lab2addingzero');
y2a = y;
tout2a = tout;


a = 3/z;
%real axis between the poles
sim('lab2addingzero');
y2b = y;
tout2b = tout;



a = 1.5/z;
%halfway between the poles and the origin, pole at 1.5
sim('lab2addingzero');
y2c = y;
tout2c = tout;

a = -3;
%in the right half plane with a =-3
sim('lab2addingzero');
y2d = y;
tout2d = tout;

a = -30
%a = -30
sim('lab2addingzero');
y2e = y;
tout2e = tout;

%%
% 3. overlay plots we just made
figure
plot(tout1,y1,'r:');
hold on
plot(tout2a,y2a,'g--');
plot(tout2b,y2b,'b-');
plot(tout2c,y2c,'y.-');
plot(tout2d,y2d,'k-');
plot(tout2e,y2e,'c:');
hold off
legend('y1','y2a','y2b','y2c','y2d','y2e','location','best')
title('Effects of an Extra Zero');
ylabel('response');
xlabel('time');

%%
%effects of an xtra pole!

%10x further left
z=.6
a = 50
sim('lab2addingpole');
y3a = y;
tout3a = tout;

%directly between
a = 5;
sim('lab2addingpole');
y3b = y;
tout3b = tout;

%halfway between
a  = 2.5
sim('lab2addingpole');
y3c = y;
tout3c = tout;

%pole in RHP
a = -3
sim('lab2addingpole');
y3d = y;
tout3d = tout;

%%
figure
plot(tout1,y1,':');
hold on
plot(tout3a,y3a,'--');
plot(tout3b,y3b,'-');
plot(tout3c,y3c,'.-');
hold off
legend('y1','y3a','y3b','y3c','location','best')
title('Effects of an Extra Pole');
ylabel('response');
xlabel('time');

%%
%report time!! :)
%determine the Mp, tr, and ts for y1,y2abcde
y1ss = y1(end);
[Mp1, tr1, ts1, MpIndex1, t_10index1,t_90index1,tssIndex1] = StepResponseMetrics(y1,tout1, 1, y1ss);

y2ass = y2a(end);
[Mp2a, tr2a, ts2a, MpIndex1, t_10index1,t_90index1,tssIndex1] = StepResponseMetrics(y2a,tout2a, 1, y2ass);

y2bss = y2b(end);
[Mp2b, tr2b, ts2b, MpIndex1, t_10index1,t_90index1,tssIndex1] = StepResponseMetrics(y2b,tout2b, 1, y2bss);

y2css = y2c(end);
[Mp2c, tr2c, ts2c, MpIndex1, t_10index1,t_90index1,tssIndex1] = StepResponseMetrics(y2c,tout2c, 1, y2css);

y2dss = y2d(end);
[Mp2d, tr2d, ts2d, MpIndex1, t_10index1,t_90index1,tssIndex1] = StepResponseMetrics(y2d,tout2d, 1, y2dss);

y2ess = y2e(end);
[Mp2e, tr2e, ts2e, MpIndex1, t_10index1,t_90index1,tssIndex1] = StepResponseMetrics(y2e,tout2e, 1, y2ess);

%%
%extra poles

y1ss = y1(end);
[Mp1, tr1, ts1, MpIndex1, t_10index1,t_90index1,tssIndex1] = StepResponseMetrics(y1,tout1, 1, y1ss);

y3ass = y3a(end);
[Mp3a, tr3a, ts3a, MpIndex1, t_10index1,t_90index1,tssIndex1] = StepResponseMetrics(y3a,tout3a, 1, y3ass);

y3bss = y3b(end);
[Mp3b, tr3b, ts3b, MpIndex1, t_10index1,t_90index1,tssIndex1] = StepResponseMetrics(y3b,tout3b, 1, y3bss);

y3css = y3c(end);
[Mp3c, tr3c, ts3c, MpIndex1, t_10index1,t_90index1,tssIndex1] = StepResponseMetrics(y3c,tout3c, 1, y3css);
