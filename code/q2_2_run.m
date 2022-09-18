aa =0;
bb=0;
cc=0;
 for r = 1:1000:100000  %阻尼系数范围
    for k = 0:0.1:1   %幂范围
   c = [r,k];
   y0=[0;0;0;0];
   [t,y]=ode45(@(t,y)q2_2(t,y,c),[0,0.452],y0,c); %由频率得周期 0.0452
   u = c(1,1);
   l=c(1,2);
   z = (trapz(u.*(abs(y(:,4))).^l.*((abs(y(:,4))).^2))/0.452);
    if(cc<=z)  %找最大值点
        aa=r;
        bb=k;
        cc=z;
    end
     scatter3(r,k,z,20,'filled');
     hold on;
    end
end
