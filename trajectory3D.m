function [PosOnDetector]=trajectory3D(Point,Direction,h,a,b)

flag=0;
if flag==1
    figure;
    edge=[1 2;2 3;3 4;4 1;1 5;2 6;3 7;4 8;5 6;6 7;7 8;8 5];
    Point12=[0 0 0;a 0 0;a a 0;0 a 0;0 0 b;a 0 b;a a b;0 a b];
    for i=1:size(edge,1)
        Point1=Point12(edge(i,1),:);
        Point2=Point12(edge(i,2),:);
        hold on;plot3D(Point1,Point2,3);
    end
    hold on;plot3(Point(1),Point(2),Point(3),'.k','MarkerSize',12);
    
    Point1=Point12(edge(1,1),:);
    Point2=Point12(edge(1,2),:)+[5 0 0];
	hold on;plot3D(Point1,Point2,3);
    
    Point1=Point12(edge(5,1),:);
    Point2=Point12(edge(5,2),:)+[0 0 1];
	hold on;plot3D(Point1,Point2,3);
    
    Point1=Point12(edge(4,1),:)+[0 2 0];
    Point2=Point12(edge(4,2),:);
	hold on;plot3D(Point1,Point2,3);
end

%%

[Point_out Direction_out]=reflection3D(Point,Direction,h,a,b);
if flag==1
   hold on;plot3D(Point,Point_out,1);
   hold on;plot3(Point_out(1),Point_out(2),Point_out(3),'.k','MarkerSize',12);
end
while Point_out(3)~=b
    temp=Point_out;
    [Point_out Direction_out]=reflection3D(Point_out,Direction_out,h,a,b);
    if flag==1
        hold on;plot3D(temp,Point_out,1);
        hold on;plot3(Point_out(1),Point_out(2),Point_out(3),'.k','MarkerSize',12);
    end
end
Direction_out=ChangeDirection(5,Direction_out);

[PosOnDetector,Distance]=PointOnFace(7,Point_out,Direction_out,h,a,b);

if flag==1
        hold on;plot3D(PosOnDetector,Point_out,1);
        hold on;plot3(PosOnDetector(1),PosOnDetector(2),PosOnDetector(3),'.k','MarkerSize',12);
end


return
i=Direction(1);
j=Direction(2);
k=Direction(3);

k_refraction=sqrt(n^2*(i^2+j^2+k^2)-i^2-j^2);

Direction=[i j k_refraction];