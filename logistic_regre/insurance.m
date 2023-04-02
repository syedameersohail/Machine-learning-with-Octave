clc; clear; close;
data=load('insurance_data.txt');
X=data(:,1);
y=data(:,2);
figure;
hold on;

pos=find(y==1);
neg=find(y==0);

plot(X(pos,1),'go','MarkerSize',8);
plot(X(neg,1),'ro','MarkerSize',8);

xlabel('number')
ylabel('Age')
legend('Insurance','NO Insurance')

hold off;
fprintf('press enter to continue\n');
pause;

theta=zeros(2,1);
X=[ones(size(X,1),1) X];

[cost,grad]=costFunction(theta,X,y)


%  Set options for fminunc
options = optimset('GradObj', 'on', 'MaxIter',400);

%  Run fminunc to obtain the optimal theta
%  This function will return theta and the cost 
[theta, cost] = fminunc(@(t)(costFunction(t, X, y)),theta, options);
fprintf('cost:%f\n',cost);
fprintf('theta:\n');
fprintf('%f\n',theta);

%predict for an age of 43 for insurance

X1=[1 43];
h_x=sigmoid(X1*theta);


fprintf('prediction for age of 43:%f\n',h_x)

hx=sigmoid(X*theta);
p = (hx>=0.5);
fprintf('Train Accuracy: %f \n', mean(double(p == y)) * 100);

plotDecisionBoundary(theta,X,y);





