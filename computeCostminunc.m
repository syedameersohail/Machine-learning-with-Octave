function [J,theta] = computeCostminunc(X, y,theta)


m=size(X,1);
y_pred=X*theta;
error=y_pred-y;
lin=1/(2*m);
J=lin*sum(error.^2);

%5*2 2*1 =5*1
del=X'*(y_pred-y);  %2*5 5*1 
theta=(1/m)*del;
% =========================================================================

end
