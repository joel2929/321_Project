%%%%%%%%%%%%%%
% Joel Marte %
% ECE321     %
% Project1   %
%%%%%%%%%%%%%%
clc, clear,close all;

%%% TASK 2.3 %%%
% fs = 8192;
% eight_note_rest = genrest(.25); 
% half_note_Eb = gentone1(311,1,1,0);
% eight_note_F = gentone1(349,.25,1,0);
% eight_note_G = gentone1(392,.25,1,0);
% half_note_D = gentone1(294,1,1,0);

% 
% 
% 
% %%% TASK 2.4 %%% still need to finish

% figure(1)
% % subplot(4, 1, 1)
% plot(((0:(length(half_note_Eb)-1))*(1/fs)), half_note_Eb);  % Normalized time to seconds
% title("Half_E")
% xlabel("time (s)")
% ylabel('Amplitude')
% axis padded
% 
% 
% figure(2)
% % subplot(4, 1, 2)
% plot(((0:(length(eight_note_rest)-1))*(1/fs)),eight_note_rest);
% title("Rest_1_/_8")
% xlabel("time (s)")
% ylabel('Amplitude')
% 
% 
% figure(3)
% % subplot(4, 1, 3)
% plot(((0:(length(eight_note_F)-1))*(1/fs)),eight_note_F);
% title("Eight_F")
% xlabel("time (s)")
% axis padded
% ylabel('Amplitude')
% 
% 
% 
% 
% % %%% TASK 2.5 %%%
% melody = [eight_note_rest eight_note_G eight_note_G eight_note_G half_note_Eb eight_note_rest  eight_note_F eight_note_F eight_note_F half_note_D ];
% soundsc(melody); % My signal sounds higher pitched.
% % 
% % 
% % %%% TASK 2.6 %%%
% figure(4)
% spectrogram(melody,256,196, 512 , 8192,'yaxis')
% title('Spectrogram Melody')
% % My signal seems to have a noticibly higher frequency.
% 
% %%% TASK 3.2 %%%
% figure(5)
% y = shape(0.25);
% plot(((0:(length(y)-1))*(1/fs)),y)
% % axis padded
% title('ADSR Amplitude Modulator')
% ylabel('Amplitude')
% xlabel("time (s)")
% 
% %%% TASK 3.4 %%%
% eight_G = gentone1(349,.25,1,1); % eight G note 
% % y_eight = shape(fs,0.25); % half note Amp modulator 
% % mod_eight_G = y_eight.*eight_G;
% figure(6)
% plot(((0:(length(eight_G)-1))*(1/fs)),eight_G)
% ylabel('Amplitude')
% xlabel("time (s)")
% title('Eight_G Note')
% 
% 
% %%% TASK 3.4 %%%
% % mod_eight_F = gentone1(349,.25,1,0);
% % figure(7)
% % plot(mod_eight_F)
% 
% 
% %%% TASK 3.5 %%%
% %%% Got the shape function to work now
% %%% won't need to do this again
% mod_eight_F = gentone1(349,.25,1,1);
% mod_half_E = gentone1(311,1,1,1);
% mod_half_D = gentone1(294,1,1,1);
% mod_eight_G = gentone1(392,.25,1,1);
% 
% 
% 
% melody2 = [eight_note_rest mod_eight_G mod_eight_G mod_eight_G mod_half_E eight_note_rest mod_eight_F mod_eight_F mod_eight_F mod_half_D];
% soundsc(melody2)
% figure(8)
% plot(((0:(length(melody2)-1))*(1/fs)),melody2)
% title('shaped Melody')
% ylabel('Amplitude')
% xlabel('Time(s)')
% 
% %%% TASK 3.6 %%%
% figure(9)
% spectrogram(melody2,256,196, 512 , 8192,'yaxis') 
% title('Spectrogram of Modulated Melody')
% 
% 
%%% TASK 4.1 %%%
% echo = zeros(size(0:1/8192:2));
% echo(1) = 1; 
% echo(4096) = .5;
% echo(8192) = 0.25;
% echo(12288) = 0.125;
% echo(16384) = 0.0625;
% figure(10)
% plot(echo)
% % axis padded
% ylabel('Amplitude')
% title('Echo Simulation')
% xlabel('Time(s) up to 2 Seconds')

%%% TASK 4.2 %%%
% reverb = conv(echo, melody2); % Melody with echo 
% soundsc(reverb)

%%% TASK 4.3 %%%
% figure(11)
% spectrogram(reverb,256,196, 512 , 8192,'yaxis') 
% title('Spectrogram of Reverberated and Modulated Melody')
% 
% figure(12)
% plot(((0:(length(reverb)-1))*(1/fs)),reverb)
% % axis padded
% title('Reverb of Melody')
% ylabel('Amplitude')
% xlabel('Time(s)')

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Project2                                                                %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% DELIVERABLE 1-4 %%%
% N = 11;
% A_vect = ones(1,N);
% a_sig = harmonics(440,1,N,A_vect,0);
% soundsc(a_sig)
% figure(13)
% spectrogram(a_sig,256,196, 512 , 8192,'yaxis') 
% title('Spectrogram of 11 Harmonics')

%% DELIVERABLE 5-6 %%%

% N = 9;
% A_vect = ones(1,N);
% b_sig = harmonics(440,2,N./9,A_vect,0);
% b_sig2 = harmonics(440,2,N,A_vect,0);
% figure(14)
% subplot(2,1,1)
% plot(((0:(length(b_sig)-1))*(1/440)),b_sig);
% title('Sinlge Frequency over 2 Periods')
% xlabel('Time(s)')
% ylabel('Amplitude')
% xlim([0 .085])
% subplot(2,1,2)
% plot(((0:(length(b_sig2)-1))*(1/440)),b_sig2);
% title('9 Harmonics Frequency over 2 Periods')
% xlabel('Time(s)')
% ylabel('Amplitude')
% xlim([0 .085])

%% DELIVERABLE 7-8 %%%
% N = 9;
% A_vect = (0.707.^(N))*ones(1,N);
% c_sig = harmonics(440,2,N,A_vect,1);
% c_sig2 = harmonics(440,2,N,A_vect,2);
% 
% figure(15)
% subplot(2,1,1)
% plot(((0:(length(c_sig)-1))*(1/440)),c_sig);
% title('Time plot of 2 second note with shape')
% xlabel('Time(s)')
% ylabel('Amplitude')
% % xlim([0 .085])
% subplot(2,1,2)
% spectrogram(c_sig,256,196, 512 , 8192,'yaxis') 
% title('Spectrogram of 2 second note with shape')

% figure(16)
% subplot(2,1,1)
% plot(((0:(length(c_sig2)-1))*(1/440)),c_sig2);
% title('Time plot of 2 second note with shape2')
% xlabel('Time(s)')
% ylabel('Amplitude')
% % xlim([0 .085])
% subplot(2,1,2)
% spectrogram(c_sig2,256,196, 512 , 8192,'yaxis') 
% title('Spectrogram of 2 second note with shape2')
% soundsc(c_sig2);


% figure(19)
% fs = 8192;
% y = shape2(0.25);
% plot(((0:(length(y)-1))*(1/fs)),y)
% title('Piano Amplitude Modulator')
% ylabel('Amplitude')
% xlabel("time (s)")

%% DELIVERABLE 11-12 %%%
% 
% N = 9;
% A_vect = ones(1,N);
% d_sig = harmonics(440,2,N./9,A_vect,0);
% d_sig2 = harmonics(440,2,N,(0.707.^(N))*A_vect,0);
% figure(19)
% subplot(2,1,1)
% plot(((0:(length(d_sig)-1))*(1/440)),d_sig);
% title('440Hz Note with 9 Harmonics over 2 Periods')
% xlabel('Time(s)')
% ylabel('Amplitude')
% xlim([0 .085])
% subplot(2,1,2)
% plot(((0:(length(d_sig2)-1))*(1/440)),d_sig2);
% title('.707^k Amplitude 440Hz Note with 9 Harmonics over 2 periods')
% xlabel('Time(s)')
% ylabel('Amplitude')
% xlim([0 .085])

% Changing A_vect had the effect of amking the otherwise smooth sinusoidal 
% wave, very choppy/have sharp ripples. Amplitude also changed
% dramatically from 1 to slightly above 0.2 at its highest. 

%% Part 2 %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Write a script shape.m that synthesizesyour Beethoven melody              %
% to sound like the shapeinet. Also write a script shape2.m that synthesizes%
% it to sound more like the shape2. You will need to use theexponential     %
% decay to simulate a shape2 sound.Feel free to modify the duration of the  % 
% attack, decay and/or release(for the shapeinet), the exponential decay    %
% for the shape2)and the A_vect to make the notes sound like a real         %
% instrument.Include a list of the final values you use in your report      %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% Project 3 %%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Part 1 %% 








