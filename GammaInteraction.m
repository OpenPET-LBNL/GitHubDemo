function [PosOfDetector]=GammaInteraction(PosOfGamma,b)
a=2.5;
%LUT=[20 18 16 14 14 16 18 20];
h=30;

N_photon=2000;
delta=360/N_photon;
PosOfDetector=[];

x_i=PosOfGamma(1);
y_i=PosOfGamma(2);

for i=0:delta:360-delta
    angle=i;
    initial=[x_i y_i angle];
    PosOfDetector=[PosOfDetector trajectory(initial,h,a,b)];
    %disp(num2str(i));
end