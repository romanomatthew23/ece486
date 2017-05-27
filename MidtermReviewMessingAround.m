
w_n = 2;
z = .173;
sysrev = tf([w_n*w_n],[1 (2*w_n*z) (w_n*w_n)])
[y,t] = step(sysrev);
%ssVal = y(end)
[Mp, tr, ts,MpIndex, t_10index,t_90index,tssIndex] = StepResponseMetrics(y,t, 1, 1);