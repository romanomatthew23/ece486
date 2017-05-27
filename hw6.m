sys21 = tf([1 3],[1 5 9 5 0]);
rlocus(sys21);
%%





 
%///////////////////////////


sys24 = tf([1 1.7778],[1 20 0 0]);
rlocus(sys24);
%%
sys26 = tf([1 3.455],[1 21 20 0]);
rlocus(sys26);
%%
z= 2.4
p= 20
sys27 = tf([10 10*z],[1 (11+p) (10+p*11) (10*p) 0]);
rlocus(sys27);
%%
z= 2.728;
p= 20;
lag = .001;
sys27b = tf([10 10*z],[1 (11+p+.001) (10+p*11 + .031) (20.23) 0.2]);
rlocus(sys27b);
k = 21.997;
sys27b2 = k*sys27b/(1 + k*sys27b)
stepresponse = step(sys27b2);
plot(stepresponse)
%%
%here is where you left off
sys7a = tf([1 2],[1 12 32 20 0]);
rlocus(sys7a);
%%
sys7c = tf([1 4 4],[1 16 85 250 0 0]);
rlocus(sys7c);
%%
sys7e = tf([1 2 2],[1 5 6 0 0]);
rlocus(sys7e);
%%
sys12 = tf([1 2],[1 5 5 25]);
rlocus(sys12);