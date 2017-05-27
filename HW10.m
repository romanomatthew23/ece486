%% hw 10
%problem 7.22(b)
%we found K values to meet our design criteria and now we are going
% to test them using the step function. I am kind of curious as to whether
% or not we can just straight up write step(whatever) with our system in
% state space form. Because we could do that in the tf form. Hey, lets just
% get the poles and fucking do it like its a generic second order system.

%first lets prove what the poles are

A = [0 1
    0 -10];

B = [0
    1];
 
K = [9803 69.92];

eig(A-B*K)
%% the poles are -39.96 (+/-) 90.5881j
%lets see step response of 2nd order system with these poles
sys722b = tf([1],[1 (39.96 -90.5881j)])*tf([1],[1 (39.96 +90.5881j)]);
[y,t] = step(sys722b);
%upon visual inspection of the curve it appears to have the given design
%criteria
max(y)