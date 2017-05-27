p1 = 79.94
p2 = 79.48

sysb = tf([38.4*p1],[.011111 (.72*p2 + .05555555) (38.4*p1)])
pole(sysb)
rlocus(sysb)

%%
p1 = 79.94
p2 = 79.48
k1 = 10*p1
k2 = 10*p2
kamp = 2.4
kpot= 1.6
ktach = .03
sysd = tf([kamp*kpot],[.2/18 (1/18 + k2*kamp*ktach) 0])
rlocus(sysd)