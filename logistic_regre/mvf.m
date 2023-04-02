clc; clear;close;

data=csvread('heart.csv');
X=data([2:end],[2]);
y=data([2:end],14);

figure; hold on;

pos=find(y==1); neg=find(y==0);

plot(X(pos,1),'r+','LineWidth',2,'MarkerSize',7);
plot(X(neg,1),'go','LineWidth',2,'MarkerSize',7);

hold on;
xlabel('number of people');
ylabel('1 male  female 0');
legend('DEATHS')
title('DEATHS -HEARTATTACK')
title('1-FEMALE  **********   0-MALE')

hold off;

