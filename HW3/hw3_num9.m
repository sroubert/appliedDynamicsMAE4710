%% HW 3 Number 9

%this script will calculate the net rotation matrix R_net from components
%R_x, R_y, R_z
syms theta_z theta_y theta_x


%the rotation matrix when rotating about z-axis
R_z = [cos(theta_z)  sin(theta_z) 0;
      -sin(theta_z)  cos(theta_z) 0;
       0            0             1];
   
%the rotation matrix when rotating about x-axis
R_x = [1            0             0;
       0            cos(theta_x)   sin(theta_x);
       0           -sin(theta_x)   cos(theta_x)];
   
%the rotation matrix when rotation about y-axis
R_y = [cos(theta_y)     0          -sin(theta_y);
       0                1           0;
       sin(theta_y)    0            cos(theta_y)]; 
   
R_net = R_z*R_y*R_x