whole = 2;
half = 1;
quarter = .5;
eight = .25;

G = 392;
Eb = 311;
F = 349;
D = 294;

% reference: https://ccrma.stanford.edu/~serafin/320/assign2/Synthesis_clarinet.html
A_vect = [1 0 .75 0 .5 0 .14 0 .5]; 

eight_note_rest = genrest(.25);

eight_note_G = harmonics(G,eight,9,A_vect,1);

half_note_Eb = harmonics(Eb,half,9,A_vect,1);

eight_note_F = harmonics(F,eight,9,A_vect,1);

half_note_D = harmonics(D,half,9,A_vect,1);

clar_melody = [eight_note_rest eight_note_G eight_note_G eight_note_G half_note_Eb eight_note_rest eight_note_F eight_note_F eight_note_F half_note_D];

soundsc(clar_melody);

figure(1)
spectrogram(clar_melody,256,196, 512,8192,'yaxis');
title("Spectrogram of clarinet")