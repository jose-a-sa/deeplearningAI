function [J, grad] = costFunctionReg(theta, X, y, lambda)
%COSTFUNCTIONREG Compute cost and gradient for logistic regression with regularization
%   J = COSTFUNCTIONREG(theta, X, y, lambda) computes the cost of using
%   theta as the parameter for regularized logistic regression and the
%   gradient of the cost w.r.t. to the parameters. 

% Initialize some useful values
m = length(y); % number of training examples

% You need to return the following variables correctly 
J = 0;
grad = zeros(size(theta));

% ====================== YOUR CODE HERE ======================
% Instructions: Compute the cost of a particular choice of theta.
%               You should set J to the cost.
%               Compute the partial derivatives and set grad to the partial
%               derivatives of the cost w.r.t. each parameter in theta

n = size(X, 2);
L = [0 zeros(1, n-1); zeros(n-1, 1) eye(n-1)];
htheta = sigmoid(X*theta);
J = (1/m) * ( - y' * log(htheta) - (1 -y') * log(1 - htheta) + (lambda/2) * theta' * L * theta );
grad = (1/m) * (X' * (htheta - y) + lambda * L * theta);



% =============================================================

end
