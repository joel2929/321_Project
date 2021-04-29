% Note's Duration
whole = 2;
half = 1;
quarter = .5;
eight = .25;

% Note's Frequencies 

Eh = 1318;
Dh = 1174.66;
Ch = 1046.5;
G = 195.996;
F = 174.614;
E = 164.814;
D = 146.832;
C = 130.813;
B = 246.942;



% Piano vector
N = 1:12; 
A_vect = .2.^(N);

eight_note_rest = genrest(.25);
whole_note_rest = genrest(2);
half_note_rest = genrest(1);


% spectrogram(comp,256,196, 512,8192,'yaxis');


eight_note_G = harmonics(G,eight,5,A_vect,2);
eight_note_F = harmonics(F,eight,5,A_vect,2);
eight_note_E = harmonics(E,eight,5,A_vect,2);
eight_note_D = harmonics(D,eight,5,A_vect,2);
eight_note_C = harmonics(C,eight,5,A_vect,2);
eight_note_B = harmonics(B,eight,5,A_vect,2);

% filt_eight_note_G = sosfilt(SOS2, eight_note_G);
% n = length(filt_eight_note_G);
% % f = (-n/2:n/2-1)*(fs/n);     %frequency range
% % soundsc(filt_eight_note_G);
% % soundsc(eight_note_G);

 


melody = [eight_note_G eight_note_E eight_note_G eight_note_B eight_note_G eight_note_E eight_note_G eight_note_B eight_note_G eight_note_E eight_note_G eight_note_B eight_note_G eight_note_E eight_note_G eight_note_B eight_note_G eight_note_E eight_note_G eight_note_B eight_note_G eight_note_E eight_note_G eight_note_B eight_note_G eight_note_D eight_note_G eight_note_B eight_note_G eight_note_D eight_note_G eight_note_B eight_note_G eight_note_D eight_note_G eight_note_B eight_note_G eight_note_D eight_note_G eight_note_B eight_note_G eight_note_D eight_note_G eight_note_B eight_note_G eight_note_D eight_note_G eight_note_B eight_note_G eight_note_D eight_note_G eight_note_B eight_note_G eight_note_D eight_note_G eight_note_B eight_note_E eight_note_C eight_note_E eight_note_G eight_note_E eight_note_C eight_note_E eight_note_G eight_note_E eight_note_C eight_note_E eight_note_G eight_note_E eight_note_C eight_note_E eight_note_G eight_note_E eight_note_C eight_note_E eight_note_G eight_note_E eight_note_C eight_note_E eight_note_G eight_note_E eight_note_C eight_note_E eight_note_G eight_note_E eight_note_C eight_note_E eight_note_G eight_note_E eight_note_C eight_note_C eight_note_E eight_note_E eight_note_C eight_note_C eight_note_E eight_note_E eight_note_C eight_note_C eight_note_E eight_note_E eight_note_C eight_note_C eight_note_E eight_note_E eight_note_C eight_note_C eight_note_E eight_note_E eight_note_C eight_note_C eight_note_E whole_note_rest eight_note_G eight_note_E eight_note_G eight_note_B eight_note_G eight_note_E eight_note_G eight_note_B eight_note_G eight_note_E eight_note_G eight_note_B eight_note_G eight_note_E eight_note_G eight_note_B eight_note_G eight_note_E eight_note_G eight_note_B eight_note_G eight_note_E eight_note_G eight_note_B eight_note_G eight_note_E eight_note_G eight_note_B eight_note_G eight_note_E eight_note_G eight_note_B];

soundsc(melody);







%
%      x = 0:1/fs:S;
%      t_trans = transpose(x);
%      c = shape2(S);
%      sig1 = (g.*c.*sin(2*pi*f1*t_trans)); 
%      sig2 = (g.*c.*sin(2*pi*f2*t_trans)); 
% 
% x = 0:1/fs:S;
% x_trans = transpose(x);
% c = shape2(S);
% y = (g.*c.*sin(2.*pi.*B.*x_trans));
% y2 = (g.*c.*sin(2.*pi.*G.*x_trans));
% comp = [y, y2];
% 
% y = sosfilt(SOS2, comp);
% n = length(y);
% f = (-n/2:n/2-1)*(fs/n);     %frequency range
% soundsc(comp);