%% lab 4
% part 5
i_a = [.29
    .30
    .31
    .32
    .34
    .36
    .38
    .41
    -.29
    -.30
    -.31
    -.32
    -.34
    -.35
    -.37
    -.39];

v_i = [5
    6
    7
    8
    9
    10
    11
    12
    -5
    -6
    -7
    -8
    -9
    -10
    -11
    -12];

w = [67.7
    86.5
    105.3
    124.1
    141.9
    160.1
    177.9
    196.4
    -66.7
    -86.5
    -105.3
    -122.4
    -140.6
    -158.4
    -176.2
    -194.1];

%%
x_val = ([i_a, w]\v_i)';
R_a = x_val(1)
K_v = x_val(2)

%%
% bw + c = K_t*I_a
figure(1)
plot(w(1:8),K_v*i_a(1:8))
title('Calculating Viscous Friction Coeffiecients for Positive Rotation')
xlabel('w (rad/s)')
ylabel('K_vi_a (Nm)') 
%%
figure(2)
plot(w(9:16),K_v*i_a(9:16))
title('Calculating Viscous Friction Coeffiecients for Negative Rotation')
xlabel('w (rad/s)')
ylabel('K_vi_a (Nm)') 
%%
%part IV
R_a = 5.5510;
R_s = 2.5;
M = R_s/(R_a + R_s);
%
time1 = Elect1(:,1);
voltage1 = Elect1(:,2);
v1ss = 5*M;
vol1_linear =log(v1ss - voltage1); 
%plot(time1(500:550),vol1_linear(500:550));
coeffs1 = polyfit(time1(500:550),vol1_linear(500:550),1);
T_e1 = -1/coeffs1(1);
L1 = T_e1*(R_a + R_s)
%plot(time1,voltage1)

%
time2 = Elect2(:,1);
voltage2 = Elect2(:,2);
v2ss = 6*M;
vol2_linear =log(v2ss - voltage2); 
%plot(time1(500:550),vol1_linear(500:550));
coeffs2 = polyfit(time2(500:550),vol2_linear(500:550),1);
T_e2 = -1/coeffs2(1);
L2 = T_e2*(R_a + R_s)

time3 = Elect3(:,1);
voltage3 = Elect3(:,2);
v3ss = 7*M;
vol3_linear =log(v3ss - voltage3); 
%plot(time1(500:550),vol1_linear(500:550));
coeffs3 = polyfit(time3(500:550),vol3_linear(500:550),1);
T_e3 = -1/coeffs3(1);
L3 = T_e3*(R_a + R_s)


time4 = Elect4(:,1);
voltage4 = Elect4(:,2);
v4ss = 8*M;
vol4_linear =log(v4ss - voltage4); 
%plot(time1(500:550),vol1_linear(500:550));
coeffs4 = polyfit(time4(500:550),vol4_linear(500:550),1);
T_e4 = -1/coeffs4(1);
L4 = T_e4*(R_a + R_s)


time5 = Elect5(:,1);
voltage5 = Elect5(:,2);
v5ss = 9*M;
vol5_linear =log(v5ss - voltage5); 
%plot(time1(500:550),vol1_linear(500:550));
coeffs5 = polyfit(time5(500:550),vol5_linear(500:550),1);
T_e5 = -1/coeffs5(1);
L5 = T_e5*(R_a + R_s)


time6 = Elect6(:,1);
voltage6 = Elect6(:,2);
v6ss = 10*M;
vol6_linear =log(v6ss - voltage6); 
%plot(time1(500:550),vol1_linear(500:550));
coeffs6 = polyfit(time6(500:550),vol6_linear(500:550),1);
T_e6 = -1/coeffs6(1);
L6 = T_e6*(R_a + R_s)

figure(1)

plot(time1(500:550),vol1_linear(500:550),':');
hold on
plot(time2(500:550),vol2_linear(500:550),'--');
plot(time3(500:550),vol3_linear(500:550),'.-');
plot(time4(500:550),vol4_linear(500:550),'*');
plot(time5(500:550),vol5_linear(500:550),'+');
plot(time6(500:550),vol6_linear(500:550),'.');
hold off
title('Calculating L_a')
xlabel('time(s)')
ylabel('Response')
legend('5V','6V','7V','8V','9V','10V')

figure(2)
plot(time1(500:550),vol1_linear(500:550));
title('Linearized Calculation of La for one Trial')
xlabel('time(s)')
ylabel('response')

%%
%last part finding J values
b = 4.25e-5;
c = .011;
K_tach = .0303;
%
time1a = Iner1(:,1);
voltage1a = Iner1(:,2)/K_tach;
voltage1a_linear = log(voltage1a + (c/b));
plot(time1a(500:700), voltage1a_linear(500:700));
title('Calculating J for 10V input')
xlabel('time(s)')
ylabel('w(rad/s)')
coeffs1a = polyfit(time1a(500:700), voltage1a_linear(500:700),1);
J1 = -b/coeffs1a(1)

time2a = Iner2(:,1);
voltage2a = Iner2(:,2)/K_tach;
voltage2a_linear = log(voltage2a + (c/b));
coeffs2a = polyfit(time2a(500:700), voltage2a_linear(500:700),1);
J2 = -b/coeffs2a(1)

time3a = Iner3(:,1);
voltage3a = Iner3(:,2)/K_tach;
voltage3a_linear = log(voltage3a + (c/b));
coeffs3a = polyfit(time3a(500:700), voltage3a_linear(500:700),1);
J3 = -b/coeffs3a(1)

time4a = Iner4(:,1);
voltage4a = Iner4(:,2)/K_tach;
voltage4a_linear = log(voltage4a + (c/b));
coeffs4a = polyfit(time4a(500:700), voltage4a_linear(500:700),1);
J4 = -b/coeffs4a(1)

time5a = Iner5(:,1);
voltage5a = Iner5(:,2)/K_tach;
voltage5a_linear = log(voltage5a + (c/b));
coeffs5a = polyfit(time5a(500:700), voltage5a_linear(500:700),1);
J5 = -b/coeffs5a(1)

time6a = Iner6(:,1);
voltage6a = Iner6(:,2)/K_tach;
voltage6a_linear = log(voltage6a + (c/b));
coeffs6a = polyfit(time6a(500:700), voltage6a_linear(500:700),1);
J6 = -b/coeffs6a(1)

J_avg = (J1+J2+J3+J4+J5+J6)/6

%%
%plot all of the trials on 1 graph
figure(1)

plot(time1a(500:700), voltage1a_linear(500:700));
hold on
plot(time2a(500:700), voltage2a_linear(500:700));
plot(time3a(500:700), voltage3a_linear(500:700));
plot(time4a(500:700), voltage4a_linear(500:700));
plot(time5a(500:700), voltage5a_linear(500:700));
plot(time6a(500:700), voltage6a_linear(500:700),':');
hold off
title('Calculating J for various input voltages')
xlabel('time(s?)')
ylabel('w(rad/s)')
legend('10V','11V','12V','13V','14V','15V')