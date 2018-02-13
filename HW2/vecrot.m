function rp = vecrot(n, theta, r)
%this function returns rp, the vector r following rotation theta degrees
%about n
%n is 3x1 unit normal vector
%theta is a single input theta
%r is a 3x1 vector

%to guarantee n is a unit normal vector
n = n/norm(n);

rp = rotmat(n,theta)*r;

rp = rp.';

    function R = rotmat(n,theta)
        %this function returns R, the rotation matrix when going theta
        %degrees about the n axiste
        %n is 3x1 unit normal
        skewSym = [ 0 -n(3) n(2);
                 n(3) 0   -n(1);
                 -n(2)  n(1)   0];
             
        R = n*n' + cos(theta)*(eye(3) - n*n') - sin(theta)*skewSym;
        
        
        
    end



end