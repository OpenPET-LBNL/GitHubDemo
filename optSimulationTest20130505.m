%one photon

clear all

a=2.5;
b=20;
h=30;


x_i=rand(1)*a;
y_i=rand(1)*b;
angle=rand(1)*360;
%x_i=7.9618;y_i=0.9871;angle=328.7833;

initial=[x_i y_i angle];


pos=trajectory(initial,h,a,b);


