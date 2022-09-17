function dy=q3_1(t,y)

m=2433;
M=4866;
m0=1028.876;

f=3640;
w=1.7152;
kr=683.4558;
C=10000;
kp=80000;
p=1025;
g=9.8;
r=1;
h=0.8;

mnet = M+m0;
dy=[0;0;0;0];


    F=@(t,y)[y(2);

(f*cos(w*t)-kr*y(2)-pi*r^2*y(1)*g*p-C*y(4)-kp*y(3))/mnet; 

    y(4);

    (-C*y(4)-kp*y(3))/m-((f*cos(w*t)-kr*y(2)-pi*r^2*y(1)*g*p-C*y(4)-kp*y(3))/mnet)
    
    ];

       G=@(t,y)[y(2);

(f*cos(w*t)-kr*y(2)+(2/9)*p*g*pi*r^2*h-pi*g*p*r^2*y(1)/3-2*M*g/3-C*y(4)-kp*y(3))/mnet; 

    y(4);

    (-C*y(4)-kp*y(3))/m-((f*cos(w*t)-kr*y(2)+(2/9)*p*g*pi*r^2*h-p*g*pi*r^2*y(1)/3-2*M*g/3-C*y(4)-kp*y(3))/mnet)
    
    ];

        H=@(t,y)[y(2);

(f*cos(w*t)-kr*y(2)+p*g*pi*r^2-C*y(4)-kp*y(3))/mnet; 

    y(4);

    (-C*y(4)-kp*y(3))/m-((f*cos(w*t)-kr*y(2)+p*g*pi*r^2-C*y(4)-kp*y(3))/mnet)
    
    ];

    J=@(t,y)[y(2);

(f*cos(w*t)-kr*y(2)-C*y(4)-kp*y(3)-M*g)/mnet; 

    y(4);

    (-C*y(4)-kp*y(3))/m-((f*cos(w*t)-kr*y(2)-C*y(4)-kp*y(3)-M*g)/mnet)
    
    ];

if(y(1)<2 && y(1)>-1)
   dy = F( t, y );
elseif (y(1)>2 && y(1)<2.8)
    dy = G( t, y );
elseif(y(1)<-1)
    dy = H(t,y);
elseif(y(1)>2.8)
    dy = J(t,y);
end

end

