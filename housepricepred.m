clc;clear ; close; 
data=csvread('Bengaluru_House_Data.csv');
data=data(2:end,6:9);
x=data(:,1:3);
y=data(:,4);
X=[ones(size(x,1),1) x];
theta=zeros(size(X,2),1);

%cost function
[cost theta]=linearregwithreg(X,y,theta);
