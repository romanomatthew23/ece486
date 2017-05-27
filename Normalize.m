%lets make a helper function for lab 2 that normalizes the data
%the input is the matrix from lab which has both y and t in it
%we output the normalized time and response vectors, actually the time
%vector doesn't change, hmm but actually it wasnt created before so we
%still need it. Yss is just 1 because it is normalized (unless the system
%is unstable, which in that case it is definitely not 1)
function [yy, yt] = Normalize(y)

yt = y(:,1);
yy = y(:,2);
yy = yy - min(yy);
yss = yy(end);
yy = yy/yss;
