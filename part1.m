% Part 1:
% In this part, you will write ascript: part1.m to create a
% test signal made up of the first 40 (unit amplitude) harmonics of 
% 100 Hz, assuming the sample rate is 8192 Hz.  You will then run the
% test signal through a lowpass filter and verify the effect of the filter
% 
clc,clear;
fs = 8192;
fnyquist = fs/2;
% % set fft size to be the power of 2 greater than the signal length
% Nfft = 2^ceil(log2(length(x)));
% % fftshift reorders the values of the DTFT to go from -pi to pi
% X =fftshift(fft(x, Nfft));
% % set appropriate omega samples for X from -pi to pi
% omegaX = (0:(Nfft-1))*(2*pi/Nfft)-pi;
% % power = abs(X)./4;
% plot(omegaX*1250, 20*log(abs(X)));
%% Deliverables 1-3
N = 40;
A_vect = linspace(1,1,N);
x = harmonics(100,2,N,A_vect,0);
n = length(x);
f = (-n/2:n/2-1)*(fs/n);     %frequency range
X = fftshift(fft(x,n));

figure(1)
subplot(2,1,1)
plot(20*log10(abs(X)));
ylabel("Magnitude in dB");
xlabel("Frequency in Hz");
title("Magitude Spectrem of x in dB");
axis([0 8000 0 100 ])

subplot(2,1,2)
plot(f,(20*log10(abs(X))));
ylabel("Magnitude in dB");
xlabel("Frequency in Hz");
title("FFshited Magitude Spctrem of x in dB");
axis([-4000 4000 0 100 ])





