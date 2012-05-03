function [X_norm, mu, sigma] = featureNormalize(X)
%FEATURENORMALIZE Normalizes the features in X 
%   FEATURENORMALIZE(X) returns a normalized version of X where
%   the mean value of each feature is 0 and the standard deviation
%   is 1. This is often a good preprocessing step to do when
%   working with learning algorithms.

X_norm = X;
mu = zeros(1, size(X, 2));
sigma = zeros(1, size(X, 2));

n = size(X,2);
for j = 1:n,
	mu(:,j) = mean(X(:,j));
end;
for j = 1:n,
	X_norm(:,j) -= mu(:,j);
end;
for j = 1:n,
	sigma(:,j) = std(X(:,j));
end
for j = 1:n,
	X_norm(:,j) /= sigma(:,j);
end;

% ============================================================

end
