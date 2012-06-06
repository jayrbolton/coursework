function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1); % 5000
num_labels = size(Theta2, 1); % 10

z2 = Theta1 * X';
a2 = [ones(1,size(z2,2)); sigmoid(z2)];
z3 = Theta2 * a2;
a3 = sigmoid(z3);
[vals,p] = max(a3,[],1);
p = p'

end
