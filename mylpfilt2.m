% function SOS_LP = mylpfilt2
%LPFILT2 Returns a discrete-time filter object.
% clc, clear;
% MATLAB Code
% Generated by MATLAB(R) 9.9 and Signal Processing Toolbox 8.5.
% Generated on: 26-Apr-2021 00:08:47

% Butterworth Lowpass filter designed using FDESIGN.LOWPASS.

% All frequency values are in Hz.
% Fs = 8192;  % Sampling Frequency

N = 40;
A_vect = linspace(1,1,N);
x = harmonics(100,2,N,A_vect,0);


% X = fftshift(fft(x,n));

y = sosfilt(SOS_LP,x);
% n = length(y);
% f = (-n/2:n/2-1)*(Fs/n);     %frequency range

Y = fft(y);
plot(20*log10(abs(Y)));

% plot(f,mag)
% axis([-4096 4096 0 100]);
% title("Magnitude Spectrum of Butterworth Filtered Signal, fftshifted");
% ylabel("Magnitude in dB");
% xlabel("Frequency in Hz");



% [EOF]
