function plot3D(point1,point2,N)
switch N
    case 1
        plot3([point1(1),point2(1)],[point1(2),point2(2)],[point1(3),point2(3)],'-r','LineWidth',1);
    case 2
        plot3([point1(1),point2(1)],[point1(2),point2(2)],[point1(3),point2(3)],'-','LineWidth',2);
    case 3
        plot3([point1(1),point2(1)],[point1(2),point2(2)],[point1(3),point2(3)],'-b','LineWidth',3);
end
