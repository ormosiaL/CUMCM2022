% result3.xlsx  zongyao
%figure(11);
y0=[0;0;0;0];
t1=[0:0.2:24]; % 前 40 个波浪周期(约为24s)内时间间隔为 0.2 s
t0=[0,24];
[t0,y]=ode45('q3_2',t0,y0);
vq1=interp1(t0,y(:,1),t1);  %浮子位移   vq1-4为40个周期对应的值 
vq2=interp1(t0,y(:,2),t1);  %  浮子速度
vq3=interp1(t0,y(:,1)+y(:,3),t1);  %  振子位移
vq4=interp1(t0,y(:,2)+y(:,4),t1);  %  振子速度
% plot(t,y(:,1));
% xlim([0,30]);

datacolumns = {'T','fuzi_zongyao_x','fuzi_zongyao_v','zhenzi_zongyao_x','zhenzi_zongyao_v'}
data = table(t1', vq1', vq2', vq3', vq4','VariableNames', datacolumns);
writetable(data, 'result3_2.csv'); 

%标出指定点 10 s、20 s、40 s、60 s、100 s
%figure(1);
y0=[0;0;0;0];
t=[0,100];
t2=[0:10:100];
[t,y]=ode45('q3_2',t,y0);
vq5=interp1(t,y(:,1),t2);  % vq2为t2对应的值
vq6=interp1(t,y(:,2),t2); 
vq7=interp1(t,y(:,1)+y(:,3),t2); 
vq8=interp1(t,y(:,2)+y(:,4),t2); 
figure(1);%浮子的垂荡位移
plot(t,y(:,1),t2,vq5,'*');
xlim([0,100]);

figure(2);%浮子的垂荡速度
plot(t,y(:,2),t2,vq6,'*');
xlim([0,100]);

figure(3);%振子的垂荡位移
plot(t,y(:,2),t2,vq7,'*');
xlim([0,100]);

figure(4);%振子的垂荡速度
plot(t,y(:,2),t2,vq8,'*');
xlim([0,100]);