x = [];
z = [];
for a = 1:100000 %阻尼系数范围
   x(end+1) = a;
   y0=[0;0;0;0]; 
   [t,y]=ode45(@(t,y)q2_1(t,y,a),[0,0.452],y0,a); % 由频率得周期 0.0452
   z(end+1) =(trapz(a*((abs(y(:,4))).^2))/0.452);
end
plot(x,z,'r-','LineWidth',1);
hold on
[maxV,maxInd]=max(z)  %找最大值点
plot(x(maxInd),z(maxInd),'r*')
