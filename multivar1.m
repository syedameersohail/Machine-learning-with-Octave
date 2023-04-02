%multi variables but here i have taken only one f

function [cost theta]=multivar1(X,y,theta,alpha)

m=size(X,1); %X=5*2 theta=2*1
for i=1:1000,
pred=X*theta; %pred=5*1
error=pred-y; %error=5*1
n=1/(2*m);
cost=n*sum(error.^2); %scalar

theta=theta-(alpha/m)*X'*(pred-y);
end;