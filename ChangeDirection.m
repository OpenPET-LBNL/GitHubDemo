function [Direction]=ChangeDirection(Face_N,Line_Direction)
<<<<<<< HEAD
% Change by pqy dor demo
=======
>>>>>>> 050885b... This is just for demo

i=Line_Direction(1);
j=Line_Direction(2);
k=Line_Direction(3);
switch Face_N
    case 1
        Direction=[i -j k];
    case 2
        Direction=[i -j k];
    case 3
        Direction=[-i j k];
    case 4
        Direction=[-i j k];
    case 5
        Direction=[i j -k];
    case 6
        Direction=[i j -k];
end
        