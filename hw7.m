%make your tf and then do bode(sys) 
sys3c = tf([1],[.02 1.02 1 0]);
bode(sys3c)
%%
sys3d = tf([1],[1 2 1])*tf([1],[1 2 4])
bode(sys3d)
%%
sys3g = tf([1 5],[1 1 0])*tf([1 3],[1 1 4]);
bode(sys3g)
%%
sys5e = tf([1 0 1],[1 0 4 0]);
bode(sys5e)
%%
sys6c = tf([1],[1 8 0 0 0 0]);
bode(sys6c)
%%
sys16a = tf([1 2],[1 20]);
bode(sys16a)
%%
sys16b = tf([1],[1 10])*tf([1],[1 2 1]);
bode(sys16b)
%%
sys26 = tf([25 25],[1 2 0])*tf([1],[1 2 16]);
bode(sys26)
[Gm,Pm,Wgm,Wpm] = margin(sys26) 
%%
sys28 = tf([3.2 3.2],[1 2 0])*tf([1],[1 .2 16]);
bode(sys28)
[Gm,Pm,Wgm,Wpm] = margin(sys28)
%%
sys32a = tf([1],[1 4 1])*tf([1],[1 4])*tf([1],[1 1]);
rlocus(sys32a)
rlocfind(sys32a)

