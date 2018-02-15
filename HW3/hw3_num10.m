%% HW 3 Number 10
close all
clear all
b = 1;
w = 1;
h = 1;

r0_0 = [0; 0; 0];
r1_0 = [b; 0; 0];
r2_0 = [b; w; 0];
r3_0 = [0; w; 0];
r4_0 = [0; w; h];
r5_0 = [b; w; h];
r6_0 = [b; 0; h];
r7_0 = [0; 0; h];

box = [r0_0 r1_0 r2_0 r3_0 r4_0 r5_0 r6_0 r7_0];


figure


axis equal

s0 = plot3(box(1,:), box(2,:), box(3,:),'b');
hold on
s1= plot3([box(1,1) box(1,end)], [box(2,1) box(2,end)], [box(3,1) box(3,end)],'b');
s2= plot3([box(1,2) box(1,end-1)], [box(2,2) box(2,end-1)], [box(3,2) box(3,end-1)],'b');
s3= plot3([box(1,3) box(1,end-2)], [box(2,3) box(2,end-2)], [box(3,3) box(3,end-2)],'b');
s4= plot3([box(1,1) box(1,4)], [box(2,1) box(2,4)], [box(3,1) box(3,4)],'b');
s5= plot3([box(1,5) box(1,end)], [box(2,5) box(2,end)], [box(3,5) box(3,end)],'b');
s6= plot3([0 0.4], [0 0], [0 0], 'g'); %x
s7= plot3([0 0], [0 0.4], [0 0], 'r'); %y
s8= plot3([0 0], [0 0], [0 0.4], 'y'); %z


xlabel('X (m)')
ylabel('Y (m)')
zlabel('Z (m)')
title('Roll, Pitch, and Yaw')
hold off

step = 100;

%% just about x
thetaZ1 = linspace(0, 0, step);
thetaX1 = linspace(0, 2*pi, step);
thetaY1 = linspace(0, 0, step);


for i = 1:step
   
    R_z = [cos(thetaZ1(i)), sin(thetaZ1(i)), 0;
        -sin(thetaZ1(i)),   cos(thetaZ1(i)), 0;
        0               ,                 0, 1];
    
    R_x = [1,       0,      0;
           0,   cos(thetaX1(i)),    sin(thetaX1(i));
           0   -sin(thetaX1(i)),    cos(thetaX1(i))];
    
    R_y = [cos(thetaY1(i)),   0,     -sin(thetaY1(i));
            0,                1,                    0;
            sin(thetaY1(i)),  0,      cos(thetaY1(i))];
        
    R_net = R_z*R_y*R_x;  
    
    r0 = R_net*r0_0;
    r1 = R_net*r1_0;
    r2 = R_net*r2_0;
    r3 = R_net*r3_0;
    r4 = R_net*r4_0;
    r5 = R_net*r5_0;
    r6 = R_net*r6_0;
    r7 = R_net*r7_0;
    
    box = [r0 r1 r2 r3 r4 r5 r6 r7];
    
    set(s0,'xData',box(1,:), 'yData',box(2,:), 'zData',box(3,:))

	set(s1, 'xData',[box(1,1) box(1,end)], 'yData',[box(2,1) box(2,end)], 'zData',[box(3,1) box(3,end)])
    set(s2, 'xData',[box(1,2) box(1,end-1)], 'yData',[box(2,2) box(2,end-1)], 'zData',[box(3,2) box(3,end-1)])
    set(s3, 'xData',[box(1,3) box(1,end-2)], 'yData',[box(2,3) box(2,end-2)], 'zData',[box(3,3) box(3,end-2)])
    set(s4, 'xData',[box(1,1) box(1,4)], 'yData',[box(2,1) box(2,4)], 'zData', [box(3,1) box(3,4)])
	set(s5, 'xData',[box(1,5) box(1,end)], 'yData',[box(2,5) box(2,end)], 'zData',[box(3,5) box(3,end)])

    xlim([-1.5,1.5])
    ylim([-1.5,1.5])
    zlim([-1.5,1.5])
    pause(eps)
    drawnow



end

%% just about y

thetaZ1 = linspace(0, 0, step);
thetaX1 = linspace(0, 0, step);
thetaY1 = linspace(0, 2*pi, step);


for i = 1:step
   
    R_z = [cos(thetaZ1(i)), sin(thetaZ1(i)), 0;
        -sin(thetaZ1(i)),   cos(thetaZ1(i)), 0;
        0               ,                 0, 1];
    
    R_x = [1,       0,      0;
           0,   cos(thetaX1(i)),    sin(thetaX1(i));
           0   -sin(thetaX1(i)),    cos(thetaX1(i))];
    
    R_y = [cos(thetaY1(i)),   0,     -sin(thetaY1(i));
            0,                1,                    0;
            sin(thetaY1(i)),  0,      cos(thetaY1(i))];
        
    R_net = R_z*R_y*R_x;  
    
    r0 = R_net*r0_0;
    r1 = R_net*r1_0;
    r2 = R_net*r2_0;
    r3 = R_net*r3_0;
    r4 = R_net*r4_0;
    r5 = R_net*r5_0;
    r6 = R_net*r6_0;
    r7 = R_net*r7_0;
    
    box = [r0 r1 r2 r3 r4 r5 r6 r7];
    
    set(s0,'xData',box(1,:), 'yData',box(2,:), 'zData',box(3,:))

	set(s1, 'xData',[box(1,1) box(1,end)], 'yData',[box(2,1) box(2,end)], 'zData',[box(3,1) box(3,end)])
    set(s2, 'xData',[box(1,2) box(1,end-1)], 'yData',[box(2,2) box(2,end-1)], 'zData',[box(3,2) box(3,end-1)])
    set(s3, 'xData',[box(1,3) box(1,end-2)], 'yData',[box(2,3) box(2,end-2)], 'zData',[box(3,3) box(3,end-2)])
    set(s4, 'xData',[box(1,1) box(1,4)], 'yData',[box(2,1) box(2,4)], 'zData', [box(3,1) box(3,4)])
	set(s5, 'xData',[box(1,5) box(1,end)], 'yData',[box(2,5) box(2,end)], 'zData',[box(3,5) box(3,end)])

    xlim([-1.5,1.5])
    ylim([-1.5,1.5])
    zlim([-1.5,1.5])
    pause(eps)
    drawnow



end

%% just about z

thetaZ1 = linspace(0, 2*pi, step);
thetaX1 = linspace(0, 0, step);
thetaY1 = linspace(0, 0, step);


for i = 1:step
   
    R_z = [cos(thetaZ1(i)), sin(thetaZ1(i)), 0;
        -sin(thetaZ1(i)),   cos(thetaZ1(i)), 0;
        0               ,                 0, 1];
    
    R_x = [1,       0,      0;
           0,   cos(thetaX1(i)),    sin(thetaX1(i));
           0   -sin(thetaX1(i)),    cos(thetaX1(i))];
    
    R_y = [cos(thetaY1(i)),   0,     -sin(thetaY1(i));
            0,                1,                    0;
            sin(thetaY1(i)),  0,      cos(thetaY1(i))];
        
    R_net = R_z*R_y*R_x;  
    
    r0 = R_net*r0_0;
    r1 = R_net*r1_0;
    r2 = R_net*r2_0;
    r3 = R_net*r3_0;
    r4 = R_net*r4_0;
    r5 = R_net*r5_0;
    r6 = R_net*r6_0;
    r7 = R_net*r7_0;
    
    box = [r0 r1 r2 r3 r4 r5 r6 r7];
    
    set(s0,'xData',box(1,:), 'yData',box(2,:), 'zData',box(3,:))

	set(s1, 'xData',[box(1,1) box(1,end)], 'yData',[box(2,1) box(2,end)], 'zData',[box(3,1) box(3,end)])
    set(s2, 'xData',[box(1,2) box(1,end-1)], 'yData',[box(2,2) box(2,end-1)], 'zData',[box(3,2) box(3,end-1)])
    set(s3, 'xData',[box(1,3) box(1,end-2)], 'yData',[box(2,3) box(2,end-2)], 'zData',[box(3,3) box(3,end-2)])
    set(s4, 'xData',[box(1,1) box(1,4)], 'yData',[box(2,1) box(2,4)], 'zData', [box(3,1) box(3,4)])
	set(s5, 'xData',[box(1,5) box(1,end)], 'yData',[box(2,5) box(2,end)], 'zData',[box(3,5) box(3,end)])

    xlim([-1.5,1.5])
    ylim([-1.5,1.5])
    zlim([-1.5,1.5])
    pause(eps)
    drawnow



end