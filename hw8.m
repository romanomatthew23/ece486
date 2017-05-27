%%hw #8
sys18 = tf([1],[1 0 0]);
nyquist(sys18)
%%
%sysnotes = tf([1],[1 0])*tf([1],[1 2 1]);
%nyquist(sysnotes)
%%
sys18b = tf([1],[1 0 .1]);
nyquist(sys18b)
%%
sys19a = tf([1 2],[1 10]);
bode(sys19a)
nyquist(sys19a)
%%
sys19b = tf([1],[1 10])*tf([1],[1 2])*tf([1],[1 2]);
bode(sys19b);
nyquist(sys19b)
%%
sys19c = tf([1 10],[1 100])*tf([1 1],[1 2])*tf([1],[1 2])*tf([1],[1 2]);
bode(sys19c);
nyquist(sys19c)
%%
sys35 = tf([3],[1 0])*tf([1],[1 1])*tf([1],[1 3]);
nyquist(sys35)
%rlocus(sys35)
%%
sys36 = tf([1 1],[1 -1])*tf([1],[1 -1]);
nyquist(sys36)