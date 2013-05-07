% one Gamma
a=2.5;
b=20;
h=30;

N=1000;
Point=rand(N,3);
Point(:,1:2)=Point(:,1:2)*a;
Point(:,3)=Point(:,3)*b;
Direction=rand(N,3)*2-1;
%x_i=0.9780;
%y_i=0.1;
%angle=rand(1)*360;
%x_i=7.9618;y_i=0.9871;angle=328.7833;
pos=[];
for i=1:N
    pos=[pos;trajectory3D(Point(i,:),Direction(i,:),h,a,b)];
    disp(num2str(i));
end


return
%%
N_hist=fix((max(pos)-min(pos))/2.5)
[n,xout]=hist(pos,N_hist);
temp1=find(xout==min(abs(xout)));
temp2=find(xout==-min(abs(xout)));
if temp1
    range=temp1-20:temp1+20;
else
    range=temp2-20:temp2+20;
end
%range=fix(N_hist/2)-20:fix(N_hist/2)+20;
figure;bar(xout(range),n(range));
