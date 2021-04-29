function [out] = shape2(duration)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
fs = 8192; % is the sampling frequency
T = 1/fs ; % is the sampling period 


S = duration;
Attk = 0:T:.03;
t = 0:T:S-0.03;
Attk_gain = 33.*Attk; % Time 33 to be able to have 1 amplitude
D = exp(-(2/S).*t); %%% time constant = tau = 5
% Decay = D.*t;
% DD = [Attk_gain Decay];

out = [Attk_gain D];

end
% adsr time segments
% a = 0.03;
% dd = duration - a;
% % Attack
% Attk = linspace(0,1,round(a.*(fs)));
% % Decay
% Dec = linspace(1,exp(-5),round(dd.*(fs)));