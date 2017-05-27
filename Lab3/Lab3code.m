%%
%controller 1
%T_d = 0
K_d = 0;
T_d = 0;
K = 19.4;
K_r = 1 + (3/5/K);
sim('Lab3_controller');
w1a = w;
tout1a = tout;
%w_r = 0
K_d = 0;
T_d = 1;
K = 19.4;
K_r = 0;
sim('Lab3_controller');
w1b = w;
tout1b = tout;

%controller 2
% T_d = 0
K_d = 0;
T_d = 0;
K = 1.067;
K_r = 1 + 3/5/K;
sim('Lab3_controller');
w2a = w;
tout2a = tout;
%w_r = 0
K_d = 0;
T_d = 1;
K = 1.067;
K_r = 0;
sim('Lab3_controller');
w2b = w;
tout2b = tout;

%controller 3
K_d = 0.0318;
T_d = 0;
K = 19.4;
K_r = 1 + (3/5/K);
sim('Lab3_controller');
w3a = w;
tout3a = tout;
%w_r =0
K_d = 0.0318;
T_d = 1;
K = 19.4;
K_r = 0;
sim('Lab3_controller');
w3b = w;
tout3b = tout;

[Mp1a, tr1a, ts1a ,MpIndex, t_10index,t_90index,tssIndex] = StepResponseMetrics(w1a,tout1a, 1, w1a(end));
[Mp2a, tr2a, ts2a ,MpIndex, t_10index,t_90index,tssIndex] = StepResponseMetrics(w2a,tout2a, 1, w2a(end));
[Mp3a, tr3a, ts3a ,MpIndex, t_10index,t_90index,tssIndex] = StepResponseMetrics(w3a,tout3a, 1, w3a(end));

figure
subplot(2,1,1)
plot(tout1a,w1a);
hold on
plot(tout2a,w2a,':');
plot(tout3a,w3a,'--');
hold off
legend('w1a','w2a','w3a','location','best');
title('Reference Response to a Unit step in Wr');
xlabel('time');
ylabel('response');

subplot(2,1,2)
plot(tout1b,w1b);
hold on
plot(tout2b,w2b,':');
plot(tout3b,w3b,'--');
hold off
legend('w1b','w2b','w3b','location','NorthEast')
title('Disturbance response');
xlabel('time');
ylabel('response');
