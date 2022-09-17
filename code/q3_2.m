function dy=q3_2(t,y)

m=2433;
M=4866;
i0=7001.914;

f=1690;
w=1.7152;
kr=654.3383;
C=1000;
kp=250000;
% p=1025;
% g=9.8;
% r=1;
% h=0.8;
ju=8890.7;


rz=0.5;
i = m/2*rz^2;
I = (23*M)/21+3*((1.64)^0.5);

mnet = I+i0;

    dy=[y(2);

(f*cos(w*t)-kr*y(2)-ju*y(1)-C*y(4)-kp*y(3))/mnet; 

    y(4);

    (-C*y(4)-kp*y(3))/i-((f*cos(w*t)-kr*y(2)-ju*y(1)-C*y(4)-kp*y(3))/mnet)
    
    ];



%        G=@(t,y)[y(2);
% 
% (f*cos(w*t)-kr*y(2)+(2/9)*p*g*pi*r^2*h-pi*g*p*r^2*y(1)/3-2*M*g/3-C*y(4)-kp*y(3))/mnet; 
% 
%     y(4);
% 
%     (-C*y(4)-kp*y(3))/i-((f*cos(w*t)-kr*y(2)+(2/9)*p*g*pi*r^2*h-p*g*pi*r^2*y(1)/3-2*M*g/3-C*y(4)-kp*y(3))/mnet)
%     
%     ];
% 
%         H=@(t,y)[y(2);
% 
% (f*cos(w*t)-kr*y(2)+p*g*pi*r^2-C*y(4)-kp*y(3))/mnet; 
% 
%     y(4);
% 
%     (-C*y(4)-kp*y(3))/i-((f*cos(w*t)-kr*y(2)+p*g*pi*r^2-C*y(4)-kp*y(3))/mnet)
%     
%     ];
% 
%     J=@(t,y)[y(2);
% 
% (f*cos(w*t)-kr*y(2)-C*y(4)-kp*y(3)-M*g)/mnet; 
% 
%     y(4);
% 
%     (-C*y(4)-kp*y(3))/i-((f*cos(w*t)-kr*y(2)-C*y(4)-kp*y(3)-M*g)/mnet)
%     
%     ];

% if(y(1)<2 && y(1)>-1)
%    dy = F( t, y );
% elseif (y(1)>2 && y(1)<2.8)
%     dy = G( t, y );
% elseif(y(1)<-1)
%     dy = H(t,y);
% elseif(y(1)>2.8)
%     dy = J(t,y);
% end

end

