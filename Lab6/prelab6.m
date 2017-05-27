%prelab 6
%i hate the world
k_pot = 10/(2*pi);
k = 18;
t_m = .2;
k_amp = 2.4;
k_c = 1;
sysb = tf([k_c*k_pot*k_amp*k],[1 0])*tf([1],[t_m 1]);
bode(sysb);
margin(sysb)
%%
%second part of b
k_pot = 10/(2*pi);
k = 18;
t_m = .2;
k_amp = 2.4;
k_c = 8.84;
sysb = tf([k_c*k_pot*k_amp*k],[1 0])*tf([1],[t_m 1]);
bode(sysb);
margin(sysb)
%%
%part c
k_c = 1;
sysc = tf([.1 1],[.01 1]);
bode(sysc);
margin(sysc)
%%
%part d
% calculating zeta and w_n based on overshoot and rise time
M_p = .15;
t_r = .03;

zeta = -log(M_p)/sqrt((pi*pi) + (log(M_p))*(log(M_p)));

w_n = (1.2 - (.45*zeta) + (2.6*zeta*zeta))/t_r;
%
sysd1 = tf([w_n*w_n],[1 0])*tf([1],[1 2*zeta*w_n]);
bode(sysd1)
margin(sysd1)
%%
%designing the controller
k_pot = 10/(2*pi);
k = 18;
t_m = .2;
k_amp = 2.4;
alpha = .007;
T = .318;

k_c = 2;            %keep in range [2,4] 
t_p = alpha*T;            %keep closer than 500rad/s to origin
t_z = T;            %keep closer than 500rad/s to origin
sysd2 = tf([k_c*k_pot*k_amp*k],[1 0])*tf([1],[t_m 1])*tf([t_z 1],[t_p 1]);
bode(sysd2);
margin(sysd2)
%%
%resulting closed loops step response
C = k_c*k_pot*k_amp*k;
sysd3 = tf([C],[t_m*t_p (t_m + t_p) (1 + C*t_z) C])*tf([t_z 1],[1])
pole(sysd3)
[Y T] = step(sysd3);
ssVal = Y(end);
[Mp, tr, ts,MpIndex, t_10index,t_90index,tssIndex] = StepResponseMetrics(Y,T, 1, ssVal);
%%
%now we need the root locus
%so we just set the transfer fucnction to DG without the gain kc
sysd4 = tf([k_pot*k_amp*k],[1 0])*tf([1],[t_m 1])*tf([t_z 1],[t_p 1]);
rlocus(sysd4);
%%
%part e
%verify that the given controller meets phase and bandwidth requirements
k_pot = 10/(2*pi);
k = 18;
t_m = .2;
k_amp = 2.4;
alpha = .007;
T = .318;

k_c = .4;            %keep in range [2,4] 
t_p = 1/92;            %keep closer than 500rad/s to origin
t_z = 1/2.3;            %keep closer than 500rad/s to origin
syse = tf([k_c*k_pot*k_amp*k],[1 0])*tf([1],[t_m 1])*tf([t_z 1],[t_p 1]);
bode(syse);
margin(syse);
%%
%step response for e
syse = tf([k_c*k_pot*k_amp*k],[1 0])*tf([1],[t_m 1])*tf([t_z 1],[t_p 1])
syse2 = feedback(syse, 1)
%fuck yeah figured it out
[Y T] = step(syse2);
ssVal = Y(end);
[Mp, tr, ts,MpIndex, t_10index,t_90index,tssIndex] = StepResponseMetrics(Y,T, 1, ssVal);
