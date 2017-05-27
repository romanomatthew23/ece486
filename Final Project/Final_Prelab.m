%% Final Prelab Examples and Questions
%

%%
%Open Loop Stability Example

A = [1 2
    0 -2];
eig(A);
%we find that the poles are at 1 and -2 
%bcuz 1 is in the RHP we know the open 
%loop is unstable

%%
%Controllability Example

B = [0
    1];
R = ctrb(A,B);
rank(R);
%because the rank of the controllability matrix (R)
% is 2 and R is a 2x2 matrix, R is full rank
% and this the system is completely controllable

%%
%closed-loop stability example

%we cannot conclude that our closed-loop system
% is stable just because it is completely controllable
% we have to check that the matrix K is chosen correctly
%where u = -Kx
%but matlab is awesome and does everything for us
%we can choose whatever poles we want and generate a
%corresponding k
%lets say we want the closed-loop poles at -2 (+/-)2j
poles = [-2+i, -2-i];
K = place(A,B,poles);
%it generates k as [5,3]
%now lets double check that this is stable
eig(A - B*K);
%and it is bcuz our poles are what we set them to be

%%
%Uncontrollable System Example

%new example, new matrices
A = [-2 1 -1
    3 -4 5
    3 -3 4];
B = [0
    1
    1];
%determine open loop stability by checking eigenvalues
% of A
eig(A);
% poles at 1,-2,-1 so unstable
%so next step is checking controllability
R = ctrb(A,B);
rank(R);
%rank is 1 but 3x3 matrix so not completely controllable
%this doesnt mean that the system is not stabilizable however
%for example if 
K = [0 0 4];
eig(A - B*K);
%gives poles at -3,-2,-1 which is STABLE! :)




%%
%  %  %%%%  %%%%  %%%%
%  %  %     % %   %
%%%%  %%%   %%%   %%%
%  %  %     %  %  %
%  %  %%%%  %  %  %%%%

% starts the questions
A = [-18 16 8
    -29 27 13
    10 -10 -4];
B = [1
    -3
    -2];
%determine open-loop stability
%by looking at eigenvalues of A
eig(A);
%we get 6,-2,and 1 which means it is
% UNSTABLE

%determine controllability
R = ctrb(A,B)
rank(R);
% R = [1 -82 -316
%     -3 -136 -670
%     -2  48  348]
% R is a 3x3 matrix with rank 3
%therefore it is full rank
%and the system is completely controllable

%designing feedeback gains
poles = [-2,-19,-38];
K = place(A,B,poles);
%the generated k matrix is K=[18,-18,4]

%verifying closed-loop stability
eig(A - B*K);
%we find the eig values of the new
%system are -38,-2,-19
%meaning it is stable bcuz all poles are LHP
%and the poles are what we chose!!!




