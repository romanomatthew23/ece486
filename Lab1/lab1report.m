%we want to calculate M_p,t_r, & t_s for all 8 trials of varying \zeta
%the problem is the function takes the ssval as input so we need to use
%that, what if we take the last tvalue and plug it in to get the ssval?
%also im not sure I am accessing the entries of the yn vectors correctly
%the start time might not be one, actually nvm according to the graph for
%the first part, at 1 second everything looks fine and zeroed. 

%to access the last y element we do this and get ss value
%this is how we do it!!!
%%
y3t = y1(:,1);
y3y = y1(:,2);
%y1ss = y1(end)

%%
%we were having trouble using the function so lets mess with the data
%min = min(y1y)
y3y = y3y - min(y3y)
y3ss = y3y(end)
y3y = y3y/y3ss
y3ss = y3y(end)
%%
%we can use the find function for a vector easily but im not quite so sure
%how to do it for a matrix of 2 columns that are acting as the y and t
%find(y1(2) == max)
[y1_Mp, y1_tr, y1_ts] = StepResponseMetrics(y3y,y3t,1,y3ss)

%%
%now we calculate the Mp, tr, and ts of all 8 trials
[y1y, y1t] = Normalize(y1);
[y1_Mp, y1_tr, y1_ts] = StepResponseMetrics(y1y,y1t,1,1)

[y2y, y2t] = Normalize(y2);
[y2_Mp, y2_tr, y2_ts] = StepResponseMetrics(y2y,y2t,1,1)

[y3y, y3t] = Normalize(y3);
[y3_Mp, y3_tr, y3_ts] = StepResponseMetrics(y3y,y3t,1,1)

[y4y, y4t] = Normalize(y4);
[y4_Mp, y4_tr, y4_ts] = StepResponseMetrics(y4y,y4t,1,1)

[y5y, y5t] = Normalize(y5);
[y5_Mp, y5_tr, y5_ts] = StepResponseMetrics(y5y,y5t,1,1)

[y6y, y6t] = Normalize(y6);
[y6_Mp, y6_tr, y6_ts] = StepResponseMetrics(y6y,y6t,1,1)

[y7y, y7t] = Normalize(y7);
[y7_Mp, y7_tr, y7_ts] = StepResponseMetrics(y7y,y7t,1,1)

[y8y, y8t] = Normalize(y8);
[y8_Mp, y8_tr, y8_ts] = StepResponseMetrics(y8y,y8t,1,1)
