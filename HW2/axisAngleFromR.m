function [n, theta] = axisAngleFromR(R)
%the following function outputs the axis of rotaiton, n, and angle of
%rotation, theta, from the input rotation matrix R

%the following equations originate from the Hughes spaceflight mechanics
%textbook

cosTheta = (1/2)*( trace(R) - 1 );

theta = acos(cosTheta);

nSkew = (1/ (2*sin(theta)) )*(R - R');

n = [nSkew(3,2); nSkew(1,3); nSkew(2,1)];

end