% for one variable
function [cost theta] =onevar(X,y,theta,alpha)
m=size(X,1);
for i=1:100,
pred=X*theta;    %X=5*2 theta=2*1 : 5*1
error=(pred-y);   %5*1-5*1=5*1
cost=0.1*sum(error.^2);
theta=theta-(alpha/m)*(X'*error); %X'=2*5error=5*1
printf('cost : %d theta0: %d theta1: %d\n',cost,theta(1),theta(2))
end;
