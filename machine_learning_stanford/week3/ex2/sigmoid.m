function g = sigmoid(z)
	%SIGMOID Compute sigmoid functoon
	%   J = SIGMOID(z) computes the sigmoid of z.
	g = 1 ./ (1 + (e .^ (-z)))
end
