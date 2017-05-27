%this is lab 6 report code
%part 3
%we are simulating the different controllers from lab5, and this one we
%just made, there are a few values held constant
%doing prelab 5 values first
K_amp = 2.4;
K_c = .4;
K_tach = .0303;
K = 18.246;
K_pot = 10/(2*pi);
t_p = 1/92;
t_z = 1/2.3;
t_m = .22;
%%
%prelab5a low gain sim
Vlg5a = V;
tlg5a = tout;
%%
plot(tlg5a, Vlg5a);

%%
%now 5a high gain model that we borrowed from a lab mate
t_z = .034;
t_p = .0045;
K_c = 3.1;
%%
Vhg5a = V;
thg5a = tout;
%%
plot(thg5a, Vhg5a)

%%
%next we caluclate the Mp, tr, ss error, ...
[Mp, tr, ts,MpIndex, t_10index,t_90index,tssIndex] = StepResponseMetrics(Vlg5a,tlg5a, 1, 1)
%%
[Mp, tr, ts,MpIndex, t_10index,t_90index,tssIndex] = StepResponseMetrics(Vhg5a,thg5a, 1, 1)
%%
%now we are going to do the simulations with lab 6 parameters of the motor
K_amp = 2.4;
K_c = .4;
K_tach = .0303;
K_pot = 10/(2*pi);
t_p = 1/92;
t_z = 1/2.3;
%okay we all set up now what are the new parameters?
K    = 18.246;
t_m  = 4.131;              %pole of the motor from DSA
%%
Vlg6 = V;
tlg6 = tout;
%%
plot(tlg6, Vlg6);
%%
[Mp, tr, ts,MpIndex, t_10index,t_90index,tssIndex] = StepResponseMetrics(Vlg6,tlg6, 1, 1)
%%
%now use the high gain controller 
%so controller parameters change
t_z = .034;
t_p = .0045;
K_c = 3.1;
%%
Vhg6 = V;
thg6 = tout;
%%
plot(thg6,Vhg6);
%%
[Mp, tr, ts,MpIndex, t_10index,t_90index,tssIndex] = StepResponseMetrics(Vhg6,thg6, 1, 1)
%%
%now its time to make the transfer function for the motor and make a bode
%plot for it, hurray!
%what do we know?
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
%%

K_dsa = 24.043;
z = .7703;
p1 = 4.131;
p2 = .1735;
sys6_3 = tf([K_dsa],[(1/(2*pi)) p1])*tf([(1/(2*pi)) z],[(1/(2*pi)) p2]);
figure(4)
bode(sys6_3)
%%
K_dsa = 24.043;
z = .7703;
p1 = 4.131;
p2 = .1735;
K_tach = .0303
K_pot = 10/(2*pi);
sys6_32 = tf([(K_dsa/K_tach*K_pot)],[(1/(2*pi)) p1])*tf([(1/(2*pi)) z],[(1/(2*pi)) p2])*tf([1],[1 0]);
figure(5)
bode(sys6_32)
margin(sys6_32);
%%
%new dsa data (manipulation)
new_mag = abs(data)*abs(K_pot/K_tach)./abs(omega);
new_phase = phase(data)*360/(2*pi) - 90;
figure(3)
subplot(2,1,1)
semilogx(omega,20*log10(new_mag));
title('DSA fresp data Bode Plot (Magnitude)');
ylabel('Magnitude (dB)');
subplot(2,1,2)
semilogx(omega,(new_phase));
title('(Phase)');
xlabel('w(rad/s)');
ylabel('Phase (degrees)');
%%
margin(new_mag,new_phase,omega);
%%
%last part
%the new transfer function is the closed loop version so
sys6lastpart = feedback(sys6_32,1);
bode(sys6lastpart)
bandwidth(sys6lastpart)

%%
%lets make a second order system with the design criteria
%PM = 52.7 deg
%wc = 49.3 rad/s

