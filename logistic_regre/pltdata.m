function plot(X,y)
figure;
hold on;
p=find(y==1);
n=find(y==0);
plot(X(p,1),X(p,2),'r+','LineWidth',2,'MarkerSize',7);
plot(X(n,1),X(n,2),'g+','LineWidth',2,'MarkerSize',7);

hold off;

end