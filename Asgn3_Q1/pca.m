function [PC,V] = pca(data)
% data - MxN matrix of input data
% (M dimensions, N trials / instances)
% PC - each column is a PC
% V - Mx1 matrix of variances
% data - MxN matrix of input data
[M,N] = size(data);

% substract off the mean for each dimension
mn = mean(data,2);
data = data - repmat(mn,1,N);

% construct the matrix Y
Y = data' / sqrt(N-1);

% SVD does it all
[u,S,PC] = svd(Y);

% calculate the variance
S = diag(S);
V = S.*S;

end