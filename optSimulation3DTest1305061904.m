%one photon

clear all

a=2.5;
b=20;
h=30;


x_i=rand(1)*a;
y_i=rand(1)*a;
z_i=rand(1)*b;
Direction=rand(1,3)*2-[1 1 1];
%x_i=5;y_i=5;z_i=5;Direction=[0.5 0.6 0.4];
Point=[x_i y_i z_i];


%x_i=7.9618;y_i=0.9871;angle=328.7833;




pos=trajectory3D(Point,Direction,h,a,b);
