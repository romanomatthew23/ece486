% calculating zeta, Wn, Mp, tr, ts based on pot values
p1 = .8929;
p2 = .8068;
w_n = sqrt(3456 * p1)
zeta = (64.8*p2 + 5)/(2*w_n)
M_p = exp(-pi*zeta/sqrt(1-(zeta*zeta)));
M_p = M_p*100
if (zeta < 1.2)
    t_r = (1.2 - .45*zeta + 2.6*zeta*zeta)/w_n
else
    t_r = (4.7*zeta - 1.2)/w_n
end

if (zeta <= .69)
    t_s = -.5/zeta/w_n*log((1-(zeta*zeta))/400)
else
    t_s = (6.6*zeta - 1.6)/w_n
end


    