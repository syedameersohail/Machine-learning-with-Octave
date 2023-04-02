function[val,grad]=del(theta)

val=(theta(1)-5)^2+(theta(2)-5)^2;

grad=zeros(2,1);
grad(1)=2*(theta(1)-5);
grad(2)=2*(theta(2)-5);