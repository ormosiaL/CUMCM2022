x = [];
z = [];
for a = 1:100000
   x(end+1) = a;
   y0=[0;0;0;0];
   [t,y]=ode45(@(t,y)q4_1(t,y,a),[0,0.505],y0,a);
   z(end+1) =(trapz(a*((abs(y(:,4))).^2))/0.505);
end
plot(x,z,'r-','LineWidth',1);
hold on
[maxV,maxInd]=max(z)
plot(x(maxInd),z(maxInd),'r*')
