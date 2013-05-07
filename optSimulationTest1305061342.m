clear all

a=2.5;
b=20;
h=30;
LUT=[20 18 16 14 14 16 18 20];

N=1000;

A=zeros(N,1);
B=zeros(N,1);
X=[];
for i=1:N
    [PosOfGamma NumofCrystal]=GetRand0506(20,a,LUT);
    temp=GammaInteraction(PosOfGamma,LUT(NumofCrystal));
    Distribution(i,:)=temp+a*(NumofCrystal-1);
    disp(num2str(i));
    
    for j=1:size(Distribution,2)
        if Distribution(i,j)>0&Distribution(i,j)<10
            A(i)=A(i)+1;
        elseif Distribution(i,j)>10&Distribution(i,j)<20
            B(i)=B(i)+1;
        end
    end
    X(i)=B(i)/(A(i)+B(i));
    
end

[n,xout]=hist(X,100);
figure;bar(xout,n);

return

%%

N_hist=fix((max(Distribution(1,:))-min(Distribution(1,:)))/2.5)
[n,xout]=hist(Distribution(1,:),N_hist);
temp1=find(xout==min(abs(xout)));
temp2=find(xout==-min(abs(xout)));
if temp1
    range=temp1-20:temp1+20;
else
    range=temp2-20:temp2+20;
end
%range=fix(N_hist/2)-20:fix(N_hist/2)+20;
figure;bar(xout(range),n(range));
