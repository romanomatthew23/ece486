%note this file is how I generated the data
%the actual data is saved from the workspace as "lab5data.mat"
%hmm, it appears that the saved workspace only has parts 2 and 3
%part 1
% i really have no idea if i need to redo my data
% i should figure that out


t1a = y1(:,1);
data1a = y1(:,2);

t1b = y2(:,1);
data1b = y2(:,2);

t1c = y3(:,1);
data1c = y3(:,2);

t1d = y4(:,1);
data1d = y4(:,2);
%%
data1a = data1a - data1a(1);
data1b = data1b - data1b(1);
data1c = data1c - data1c(1);
data1d = data1d - data1d(1);
%
yss1a = data1a(end);
yss1b = data1b(end);
yss1c = data1c(end);
yss1d = data1d(end);

Ess1a = abs(2 - data1a(end))*25
Ess1b = abs(2 - data1b(end))*25
Ess1c = abs(2 - data1c(end))*25
Ess1d = abs(2 - data1d(end))*25


%%
[Mp, tr, ts,MpIndex, t_10index,t_90index,tssIndex] = StepResponseMetrics(data1a,t1a, 1, yss1a);
[Mp, tr, ts,MpIndex, t_10index,t_90index,tssIndex] = StepResponseMetrics(data1b,t1b, 1, yss1b);
[Mp, tr, ts,MpIndex, t_10index,t_90index,tssIndex] = StepResponseMetrics(data1c,t1c, 1, yss1c);
[Mp, tr, ts,MpIndex, t_10index,t_90index,tssIndex] = StepResponseMetrics(data1d,t1d, 1, yss1d);
%%
% to find steady state error we need to subtract the expected by actual
% so, y(1) + 2 - y(end) right?
% it may be twice/half that value, not sure really

plot(t1a, data1a,'k')
hold on
plot(t1b, data1b,'y')
plot(t1c, data1c,'g')
plot(t1d, data1d,'r')
hold off
legend('1','2','3','4')
%%
% part 2
% DO LATER!!!
t2a = data2a(:,1)
data2a = data2a(:,3)

t2b = data2b(:,1)
data2b = data2b(:,3)

t2c = data2c(:,1)
data2c = data2c(:,3)

t2d = data2d(:,1)
data2d = data2d(:,3)

%offset1 = 3 - data1(1)
%data1 = data1 + offset1
%offset2 = 3 - data2(1)
%data2 = data2 + offset2
%offset3 = 3 - data3(1)
%data3 = data3 + offset3
%offset4 = 3 - data4(1)
%data4 = data4 + offset4



%%
plot(t2a, data2a,'k')
hold on
plot(t2b, data2b,'y')
plot(t2c, data2c,'g')
plot(t2d, data2d,'r')
hold off
legend('1','2','3','4')
%%
% we need to look at the plots from right before 2 seconds to right before
% 3 seconds
% this corresponds to like index 990 - 1490

plot(t2a(990:1490), data2a(990:1490),'k')
hold on
plot(t2b(990:1490), data2b(990:1490),'y')
plot(t2c(990:1490), data2c(990:1490),'g')
plot(t2d(990:1490), data2d(990:1490),'r')
hold off
legend('1','2','3','4')
%%
%then do something similar to part 1
data2a = data2a - data2a(990);
data2b = data2b - data2b(990);
data2c = data2c - data2c(990);
data2d = data2d - data2d(990);
%
yss2a = data2a(1490);
yss2b = data2b(1490);
yss2c = data2c(1490);
yss2d = data2d(1490);

Ess2a = abs(2 - data2a(1490))*25
Ess2b = abs(2 - data2b(1490))*25
Ess2c = abs(2 - data2c(1490))*25
Ess2d = abs(2 - data2d(1490))*25
%%
[Mp, tr, ts,MpIndex, t_10index,t_90index,tssIndex] = StepResponseMetrics(data2a(990:1490),t2a(990:1490), 1, yss2a);
[Mp, tr, ts,MpIndex, t_10index,t_90index,tssIndex] = StepResponseMetrics(data2b(990:1490),t2b(990:1490), 1, yss2b);
[Mp, tr, ts,MpIndex, t_10index,t_90index,tssIndex] = StepResponseMetrics(data2c(990:1490),t2c(990:1490), 1, yss2c);
[Mp, tr, ts,MpIndex, t_10index,t_90index,tssIndex] = StepResponseMetrics(data2d(990:1490),t2d(990:1490), 1, yss2d);


%%
% part 3
t3a = data3a(:,1)
data3a = data3a(:,3)

t3b = data3b(:,1)
data3b = data3b(:,3)

t3c = data3c(:,1)
data3c = data3c(:,3)

t3d = data3d(:,1)
data3d = data3d(:,3)

%%
plot(t3a, data3a,'k')
hold on
plot(t3b, data3b,'y')
plot(t3c, data3c,'g')
plot(t3d, data3d,'r')
hold off
legend('1','2','3','4')
%%
% we need to look at the plots from right before 2 seconds to right before
% 3 seconds
% this corresponds to like index 990 - 1490

plot(t3a(990:1490), data3a(990:1490),'k')
hold on
plot(t3b(990:1490), data3b(990:1490),'y')
plot(t3c(990:1490), data3c(990:1490),'g')
plot(t3d(990:1490), data3d(990:1490),'r')
hold off
legend('1','2','3','4')
%%
%then do something similar to part 1
data3a = data3a - data3a(990);
data3b = data3b - data3b(990);
data3c = data3c - data3c(990);
data3d = data3d - data3d(990);
%%
plot(t3a(990:1490), data3a(990:1490),'k')
hold on
plot(t3b(990:1490), data3b(990:1490),'y')
plot(t3c(990:1490), data3c(990:1490),'g')
plot(t3d(990:1490), data3d(990:1490),'r')
hold off
legend('1','2','3','4')
%%
yss3a = 2.2;  %data3a(1490);
yss3b = data3b(1490);
yss3c = data3c(1490);
yss3d = data3d(1490);


Ess3a = abs(2 - yss3a)*25
Ess3b = abs(2 - data3b(1490))*25
Ess3c = abs(2 - data3c(1490))*25
Ess3d = abs(2 - data3d(1490))*25
%%
[Mp, tr, ts,MpIndex, t_10index,t_90index,tssIndex] = StepResponseMetrics(data3a(990:1490),t3a(990:1490), 1, 2.2);
[Mp, tr, ts,MpIndex, t_10index,t_90index,tssIndex] = StepResponseMetrics(data3b(990:1490),t3b(990:1490), 1, yss3b);
[Mp, tr, ts,MpIndex, t_10index,t_90index,tssIndex] = StepResponseMetrics(data3c(990:1490),t3c(990:1490), 1, yss3c);
[Mp, tr, ts,MpIndex, t_10index,t_90index,tssIndex] = StepResponseMetrics(data3d(990:1490),t3d(990:1490), 1, yss3d);

%%
%i think part 3 data is good
plot(data3a(:,1),data3a(:,3))
hold on 
plot(data3a(:,1),data3a(:,2))
hold off

%%
plot(data3b(:,1),data3b(:,3))
hold on 
plot(data3b(:,1),data3b(:,2))
hold off

%%
plot(data3c(:,1),data3c(:,3))
hold on 
plot(data3c(:,1),data3c(:,2))
hold off
%%
plot(data3d(:,1),data3d(:,3))
hold on 
plot(data3d(:,1),data3d(:,2))
hold off