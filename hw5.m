sys5a = tf([1],[1 3 10]);
rlocus(sys5a);
%%
sys5b = tf([1],[1 3 10 0]);
rlocus(sys5b);
%%
sys6a = tf([1],[1 8 0 0]);
rlocus(sys6a);
%%
sys6b = tf([1],[1 8 0 0 0]);
rlocus(sys6b);
%%
sys6d = tf([1 3],[1 8 0 0]);
rlocus(sys6d);
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