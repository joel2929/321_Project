%%% TASK 3.1 %%%
function [modulate] = shape(duration)
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here


% fs = frequency;  % sampling frequency

fs = 8192; % is the smapling frequency
% T = 1/fs ; % is the sampling period 

% adsr time segments
a = 0.03;
d = 0.02;
r = 0.02;
s = duration - a - d - r;

% Attack
Attk = linspace(0,1,round(a.*(fs)));


% Decay

Dec = linspace(1,0.6,round(d.*(fs)));


% sustain

Sust = linspace(0.6,0.6,round(s.*(fs)));

% release

Rel = linspace(0.6,0,round(r.*(fs)));

modulate = [Attk Dec Sust Rel];




% 
% S = duration;
% t = 0:1/8192:S;
% 
% t(t>(length(t))-.03) = 0;
% note = gain*sin(2*pi*fs*t);
% 
% plot(t, note)
end

