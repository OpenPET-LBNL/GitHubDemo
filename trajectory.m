function [PosOnDetector]=trajectory(Initial,h,a,b)
flag=0;
% Initial=(x,y,angle)
%a=2.5;
%b=20;
n=1;
reflection_out=[0 0 0];
Path_out=[0 0 0];

reflection_out=reflection(Initial,a,b);
if flag==1
    figure;plot([0,a],[0,0],'-b','LineWidth',2);hold on;plot([a,a],[0,b],'-b','LineWidth',2);hold on;plot([a,0],[b,b],'-b','LineWidth',2);
    hold on;plot([0,0],[b,0],'-b','LineWidth',2);hold on;plot(Initial(1),Initial(2),'.k','MarkerSize',12);
    hold on;plot([Initial(1),reflection_out(1)],[Initial(2),reflection_out(2)],'-r','LineWidth',1);
end
while reflection_out(2)~=b
    temp=reflection_out;
    reflection_out=reflection(reflection_out,a,b);
    if flag==1
        hold on;plot([temp(1),reflection_out(1)],[temp(2),reflection_out(2)],'-r','LineWidth',1);
    end
end

Path_out(1:2)=reflection_out(1:2);
if reflection_out(3)>=0&reflection_out(3)<90
    beta=asind(sind(90-reflection_out(3))/n);
    Path_out(3)=90-beta;
elseif reflection_out(3)==90
    Path_out(3)=90;
elseif reflection_out(3)>90&reflection_out(3)<=180
    beta=asind(sind(reflection_out(3)-90)/n);
    Path_out(3)=90+beta;
else
    disp('angle wrong!');
    pause
end

x_o=Path_out(1);
y_o=Path_out(2);
alpha_o=Path_out(3);
if alpha_o==90
    PosOnDetector=x_o;
else
    PosOnDetector=(h+tand(alpha_o)*x_o-y_o)/tand(alpha_o);
end
if flag==1
    hold on;plot([Path_out(1),PosOnDetector],[b,h],'-g','LineWidth',2);
end


