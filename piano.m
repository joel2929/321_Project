whole = 2;
half = 1;
quarter = .5;
eight = .25;

G = 392;
Eb = 311;
F = 349;
D = 294;

N = 1:5; % decay by 5 times constant 
A_vect = .2.^(N);

%  melody = [eight_note_rest 
%            eight_note_G eight_note_G eight_note_G half_note_Eb
%            eight_note_rest  
%            eight_note_F eight_note_F eight_note_F half_note_D ];

eight_note_rest = genrest(.25);

eight_note_G = harmonics(G,eight,5,A_vect,2);

hal_note_Eb = harmonics(Eb,half,5,A_vect,2);

eight_note_F = harmonics(F,eight,5,A_vect,2);

half_note_D = harmonics(D,half,5,A_vect,2);

piano_melody = [eight_note_rest eight_note_G eight_note_G eight_note_G hal_note_Eb eight_note_rest eight_note_F eight_note_F eight_note_F half_note_D];

soundsc(piano_melody);

figure(1)
spectrogram(piano_melody,256,196, 512,8192,'yaxis');
title("Spectrogram of Piano Melody")
