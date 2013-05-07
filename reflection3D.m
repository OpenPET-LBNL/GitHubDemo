function [Point Direction]=reflection3D(Line_Point,Line_Direction,h,a,b)


i=Line_Direction(1);
j=Line_Direction(2);
k=Line_Direction(3);

[Intersection(1,:),Distance(1)]=PointOnFace(1,Line_Point,Line_Direction,h,a,b);
[Intersection(2,:),Distance(2)]=PointOnFace(2,Line_Point,Line_Direction,h,a,b);
[Intersection(3,:),Distance(3)]=PointOnFace(3,Line_Point,Line_Direction,h,a,b);
[Intersection(4,:),Distance(4)]=PointOnFace(4,Line_Point,Line_Direction,h,a,b);
[Intersection(5,:),Distance(5)]=PointOnFace(5,Line_Point,Line_Direction,h,a,b);
[Intersection(6,:),Distance(6)]=PointOnFace(6,Line_Point,Line_Direction,h,a,b);

if i*j*k==0
    Point=[Line_point(1:2) b];
    Direction=abs(Line_Direction);
end

if i>0
    if j>0
        if k>0
            temp=[Distance(1) 10000 10000 Distance(4) Distance(5) 10000];
            Face_N=find(temp==min(temp));
            Point=Intersection(Face_N,:);
            Direction=ChangeDirection(Face_N,Line_Direction);
        else
            temp=[Distance(1) 10000 10000 Distance(4) 10000 Distance(6)];
            Face_N=find(temp==min(temp));
            Point=Intersection(Face_N,:);
            Direction=ChangeDirection(Face_N,Line_Direction);
        end
    else
        if k>0
            temp=[10000 Distance(2) 10000 Distance(4) Distance(5) 10000];
            Face_N=find(temp==min(temp));
            Point=Intersection(Face_N,:);
            Direction=ChangeDirection(Face_N,Line_Direction);
        else
            temp=[10000 Distance(2) 10000 Distance(4) 10000 Distance(6)];
            Face_N=find(temp==min(temp));
            Point=Intersection(Face_N,:);
            Direction=ChangeDirection(Face_N,Line_Direction);
        end
    end
else
    if j>0
        if k>0
            temp=[Distance(1) 10000 Distance(3) 10000 Distance(5) 10000];
            Face_N=find(temp==min(temp));
            Point=Intersection(Face_N,:);
            Direction=ChangeDirection(Face_N,Line_Direction);
        else
            temp=[Distance(1) 10000 Distance(3) 10000 10000 Distance(6)];
            Face_N=find(temp==min(temp));
            Point=Intersection(Face_N,:);
            Direction=ChangeDirection(Face_N,Line_Direction);
        end
    else
        if k>0
            temp=[10000 Distance(2) Distance(3) 10000 Distance(5) 10000];
            Face_N=find(temp==min(temp));
            Point=Intersection(Face_N,:);
            Direction=ChangeDirection(Face_N,Line_Direction);
        else
            temp=[10000 Distance(2) Distance(3) 10000 10000 Distance(6)];
            Face_N=find(temp==min(temp));
            Point=Intersection(Face_N,:);
            Direction=ChangeDirection(Face_N,Line_Direction);
        end
    end
end
    
            
