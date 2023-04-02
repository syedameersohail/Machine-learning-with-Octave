function [cost,theta]=linearregwithreg(X,y,theta)
    
  alpha=0.01;
  m=size(X,1);
  for i=1:200, 
    hx=X*theta;  %X=13320*4 4*1 =13320*1
    sumerror=sum((hx-y).^2); %13320*1 -13320*1
    cost=(1/(2*m))*sumerror; %scalar
    delta=(1/m)*sum(hx-y);
    theta=theta-(alpha*(X'*delta)); % 4*1 
    fprintf('cost: %f theta(1): %f theta(2): %ftheta(3): %f theta(4): %f\n',cost,theta(1),theta(2),theta(3),theta(4));
end
