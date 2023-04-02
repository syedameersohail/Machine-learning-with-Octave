clc; clear;
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
theta=zeros(2,1);
X=[ones(size(X,1),1) X];

z=X*theta;
hx=sigmoid(z);
m=size(X,1);
lambda=1;


del=sum((-y.*log(hx))-(1-y).*log(1-hx));
J=(1/m)*del+(lambda/2*m)*sum((theta).^2)

