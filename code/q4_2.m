function dy=q4_2(t,y,C)

m=2433;
M=4866;
i0=7142.493;

f=2140;
w=1.9806;
kr=1655.909;

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

end