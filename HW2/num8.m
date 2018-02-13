%% hw 2 num 8
close all
b = 1;
w = 1;
h = 1;

r0 = [0; 0; 0];
r1 = [b; 0; 0];
r2 = [b; w; 0];
r3 = [0; w; 0];
r4 = [0; w; h];
r5 = [b; w; h];
r6 = [b; 0; h];
r7 = [0; 0; h];

box = [r0 r1 r2 r3 r4 r5 r6 r7];


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
s9 = plot3([0 1], [0 1], [0 1], 'k');


xlabel('X (m)')
ylabel('Y (m)')
zlabel('Z (m)')
title('Cube Rotating 120 Degrees About [1,1,1] Axis')
hold off

thetaMovement = linspace(0, 2*pi/3, 200);
deltaTheta = (2*pi/3)/length(thetaMovement-1);


for i = 1:200
    
    r0 = vecrot([1;1;1],deltaTheta,r0)';
    r1 = vecrot([1;1;1],deltaTheta,r1)';
    r2 = vecrot([1;1;1],deltaTheta,r2)';
    r3 = vecrot([1;1;1],deltaTheta,r3)';
    r4 = vecrot([1;1;1],deltaTheta,r4)';
    r5 = vecrot([1;1;1],deltaTheta,r5)';
    r6 = vecrot([1;1;1],deltaTheta,r6)';
    r7 = vecrot([1;1;1],deltaTheta,r7)';
    
    box = [r0 r1 r2 r3 r4 r5 r6 r7];
    
    set(s0,'xData',box(1,:), 'yData',box(2,:), 'zData',box(3,:))

	set(s1, 'xData',[box(1,1) box(1,end)], 'yData',[box(2,1) box(2,end)], 'zData',[box(3,1) box(3,end)])
    set(s2, 'xData',[box(1,2) box(1,end-1)], 'yData',[box(2,2) box(2,end-1)], 'zData',[box(3,2) box(3,end-1)])
    set(s3, 'xData',[box(1,3) box(1,end-2)], 'yData',[box(2,3) box(2,end-2)], 'zData',[box(3,3) box(3,end-2)])
    set(s4, 'xData',[box(1,1) box(1,4)], 'yData',[box(2,1) box(2,4)], 'zData', [box(3,1) box(3,4)])
	set(s5, 'xData',[box(1,5) box(1,end)], 'yData',[box(2,5) box(2,end)], 'zData',[box(3,5) box(3,end)])

    xlim([-0.5,1.5])
    ylim([-0.5,1.5])
    zlim([-0.5,1.5])
    pause(eps)
    drawnow



end



 
 