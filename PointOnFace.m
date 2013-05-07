function [Intersection,Distance]=PointOnFace(Face_N,Line_Point,Line_Direction,h,a,b)


x0=Line_Point(1);
y0=Line_Point(2);
z0=Line_Point(3);
i=Line_Direction(1);
j=Line_Direction(2);
k=Line_Direction(3);

switch Face_N
    case 1
        y=a;
        if j~=0
            x=(i*y-i*y0+j*x0)/j;
            z=(k*y-k*y0+j*z0)/j;
        else
            x=10000;
            z=10000;
        end
    case 2
        y=0;
        if j~=0
            x=(i*y-i*y0+j*x0)/j;
            z=(k*y-k*y0+j*z0)/j;
        else
            x=10000;
            z=10000;
        end
    case 3
        x=0;
        if i~=0
            y=(j*x-j*x0+i*y0)/i;
            z=(k*x-k*x0+i*z0)/i;
        else
            y=10000;
            z=10000;
        end
    case 4
        x=a;
        if i~=0
            y=(j*x-j*x0+i*y0)/i;
            z=(k*x-k*x0+i*z0)/i;
        else
            y=10000;
            z=10000;
        end
    case 5
        z=b;
        if k~=0
            x=(i*z-i*z0+k*x0)/k;
            y=(j*z-j*z0+k*y0)/k;
        else
            y=10000;
            x=10000;
        end
    case 6
        z=0;
        if k~=0
            x=(i*z-i*z0+k*x0)/k;
            y=(j*z-j*z0+k*y0)/k;
        else
            y=10000;
            x=10000;
        end
    case 7
        z=h;
        if k~=0
            x=(i*z-i*z0+k*x0)/k;
            y=(j*z-j*z0+k*y0)/k;
        else
            y=10000;
            x=10000;
        end
        
end
Intersection=[x y z];
Distance=norm(Intersection-Line_Point);


