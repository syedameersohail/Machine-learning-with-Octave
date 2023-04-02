clc; clear; close; close;

%importing data
data=csvread('heart.csv');
X=data([2:end],[1,4]);
y=data([2:end],14);
%plotting
plotData(X,y);
xlabel('AGE');
ylabel('Resting blood pressure')
hold on;

%scaling

##%calculating means of X1 and X2
##m11=mean(X(:,1)); m12=mean(X(:,2)); 
##
##%calculating standard deviations of X1 and X2
##sd11=std(X(:,1)); sd12=std(X(:,2)); 
##
##%adding mean values to x1 and x2
##a=zeros(size(X,1),1);
##m1=a+m11; m2=a+m12; 
##
##%adding sd values to x1 and x2
##sd1=a+sd11; sd2=a+sd12;
##
##%scaling 
##mu1=X(:,1)-m1; mu2=X(:,2)-m2;
##X1=mu1./sd1; X2=mu2./sd2; 


X1=X(:,1);
X2=X(:,2);
%combining X1 and X2
X=[ones(length(X1),1) X1 X2];
options= optimset('GradObj','on', 'MaxIter', 400);
init_theta=zeros(size(X,2),1);
[theta,J]=fminunc(@(t)(costFunction(t,X,y)),init_theta,options);
fprintf('theta:%f\n ',theta);
fprintf('cost:%f\n ',J);

plotDecisionBoundary(theta,X,y);
xlabel('Age');
ylabel('Resting blood pressure');
####
##x1=95-54.366;
##x1=x1./9.08;
##x2=280-131.62;
##x2=x2./17.538;
##
##x=[1,x1,x2];
##theta=[0.190; -0.4; -0.18];
##z=x*theta;
##z1=sigmoid(z);
##z1

















