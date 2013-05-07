function [PosOfGamma,N]=GetRand0506(WholeWid,CrystalWid,LUT)
%WholeWid:wid of the detector module
%CrystalWid: wid of a crystal
%CrystalLength:length of a crystal
%PosOfGamma: position of Gamma
%N: which crystal get the 


PosOfGamma=[0 0];

M=WholeWid/CrystalWid;
N=fix(rand(1)*M)+1;
CrystalLength=LUT(N);
PosOfGamma=[rand(1)*CrystalWid,rand(1)*CrystalLength];