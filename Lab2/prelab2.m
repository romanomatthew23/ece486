figure
subplot(2,1,1)
plot(tout,y)
ylabel('y')
xlabel('tout')
title('y')

subplot(2,1,2)
plot(tout,y_dot)
ylabel('y-dot')
xlabel('tout')
title('y-dot')
