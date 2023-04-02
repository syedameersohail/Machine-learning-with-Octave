%cost
J=computeCostMulti(X,y,theta);
fprintf('%f\n',J)

%grads
grad=zeros(size(theta));
del=sum((hx-y).*X);
grad=(1/m)*del;
fprintf('%f\n',grad)


%applying fminunc

options=optimset('Gradobj','on','Maxiter',400);
init_theta=zeros(2,1);
%[opttheta,val,exitFlag]=fminunc((@t)(computeCostminunc(t,X,y,theta)),init_theta,options);

[theta, J, exit_flag] = ...
	fminunc(@(t)(computeCostminunc(X, y,t)), init_theta, options);
fprintf("theta1: %f\n",theta(1));
fprintf("theta2: %f\n",theta(2));