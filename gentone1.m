%%% TASK 2.2 %%%
function [out] = gentone1(frequency,duration,gain, contour)
%gentone plots notes w/ specific freqz duration and gain 
%   Detailed explanation goes here

 f = frequency;
 fs = 8192;
 S = duration;
 g = gain;
%  t = 0:1/8192:S-.03;
 c = contour;

if c == 0
     t = 0:1/fs:S-.03;
     note = (g.*sin(2*pi*f*t));
     pause = genrest(.03);
     out = [note pause];
elseif c ==1
     t = 0:1/fs:S;
     c = shape(S);
     out = (g.*c.*sin(2*pi*f*t));
elseif c == 2
     t = 0:1/fs:S;
     c = shape2(S);
%      pause2 = genrest(.03);
     note2 = (g.*c.*sin(2*pi*f*t));   
     out = note2;
     
% elseif c == 3
%      t = 0:1/fs:S;
%      t_trans = transpose(t);
%      c = shape2(S);
%      out = (g.*c.*sin(2*pi*f*t_t_trans)); 
% elseif c == 2
%     Attk = 0:(1/fs):.03;
%     t = 0:1/fs:S;
%     D = exp(-t/5); %%% time constant = tau = 5
%     DD = [Attk D];
%     out = (g.*DD.*sin(2*pi*f*t));

    
    


   












% ta = 0:1/8192:S;
% t = linspace(0,1,1/8192);

% if contour ~= 0
% %     t(t>(length(t))) = 0;
%     note = gain*sin(2*pi*fs*t);
% 
% elseif contour ~= 1
%     % plot(((0:(length(ymod)-1))*(1/fs)),ymod)
    
    
%     % adsr time segments
%     a = 0.03;
%     d = 0.02;
%     r = 0.02;
%     s = duration - a - d - r;
% 
%     % Attack
%     Attk = linspace(0,1,round(a*(fs)));
% 
% 
%     % Decay
% 
%     Dec = linspace(1,0.6,round(d*(fs)));
% 
% 
%     % sustain
% 
%     Sust = linspace(0.6,0.6,round(s*(fs)));
% 
%     % release
% 
%     Rel = linspace(0.6,0,round(r*(fs)));

%     modulate = [Attk Dec Sust Rel];
    
%    if (duration == .25)
%        y_4th = shape(fs,.25);
%        note = y_4th.*(gain*sin(2*pi*fs*t));
%        mod_eight_G = y_4th.*eight_G;
%        plot(((0:(length(mod_eight_G)-1))*(1/fs)),mod_eight_G)
%        
%    if (duration == 1)
%        y_1 = shape(fs, 1);
%        
%    end
   

    
%     y = shape(fs,duration);



%     note = modulate.*sig;
    
    

    



end

