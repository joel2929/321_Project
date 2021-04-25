function [Y] = harmonics(frequency,duration,N, A_vect,contour)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here


f = frequency; % fundamental frequency
S = duration;
gain = A_vect;
c = contour;

harmonic_sig = 0;


for i = 1:N
    harmonic_sig = harmonic_sig + gentone1(i*f,S,gain(i),c);
end
    
    Y = harmonic_sig;

end

