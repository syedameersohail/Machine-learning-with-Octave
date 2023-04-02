function plotData(X, y)
figure; hold on;

pos=find(y==1); neg=find(y==0);

plot(X(pos,1),X(pos,2),'r+','LineWidth',2,'MarkerSize',7);
plot(X(neg,1),X(neg,2),'bo','LineWidth',2,'MarkerSize',7);
legend('Heart disease','NO Heart disease');
hold off;

end
