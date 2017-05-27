F = [0 1 0 0 
    -1600 -2.3 1600 2.3
    0 0 0 1
    3200 4.6 -3200 -4.6];

G = [0
     .5
     0
     0];

H = [0 0 1 0];

J = [0];
%%
sysGPB = ss(F,G,H,J);
impulse(sysGPB)

%%
p = eig(F)

z = tzero(F,G,H,J)