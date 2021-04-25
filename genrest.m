%%% TASK 2.1 %%%


function [rest] = genrest(duration)
%genrest represents a musical rest/pauses/zeros
%   Detailed explanation goes here
% outputArg1 = inputArg1;

S = duration;
T = 0:1/8192:S;
rest = 0*sin(2*pi*T);



plot(T, rest)

end

