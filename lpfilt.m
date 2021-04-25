clc,clear;
load('Hd.mat')
N = 40;
fs = 8192; 
A_vect = linspace(1,1,N);
SOS_LP = [1,2,1,1,-1.21471872152270;1,2,1,1,-1.03705005613104;1,2,1,1,-0.916821713829899;1,2,1,1,-0.837540994224741;1,2,1,1,-0.789279735192294;1,2,1,1,-0.766419262204284];
x = harmonics(100,2,N,A_vect,0);


y = sosfilt(SOS_LP,x);
Y = fft(y);
plot(Y);