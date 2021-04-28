% Note's Duration
whole = 2;
half = 1;
quarter = .5;
eight = .25;

% Note's Frequencies 
G = 195.996;
F = 174.614;
E = 164.814;
D = 146.832;
C = 130.813;
B = 246.942;




% Piano vector
N = 1:5; 
A_vect = .2.^(N);

eight_note_rest = genrest(.25);
whole_note_rest = genrest(2);

eight_note_G = harmonics(G,eight,5,A_vect,2);
eight_note_F = harmonics(F,eight,5,A_vect,2);
eight_note_E = harmonics(E,eight,5,A_vect,2);
eight_note_D = harmonics(D,eight,5,A_vect,2);
eight_note_C = harmonics(C,eight,5,A_vect,2);
eight_note_B = harmonics(B,eight,5,A_vect,2);





melody = [eight_note_G eight_note_E eight_note_G eight_note_B eight_note_G eight_note_E eight_note_G eight_note_B eight_note_G eight_note_E eight_note_G eight_note_B eight_note_G eight_note_E eight_note_G eight_note_B eight_note_G eight_note_E eight_note_G eight_note_B eight_note_G eight_note_E eight_note_G eight_note_B eight_note_G eight_note_D eight_note_G eight_note_B eight_note_G eight_note_D eight_note_G eight_note_B eight_note_G eight_note_D eight_note_G eight_note_B eight_note_G eight_note_D eight_note_G eight_note_B eight_note_G eight_note_D eight_note_G eight_note_B eight_note_G eight_note_D eight_note_G eight_note_B eight_note_G eight_note_D eight_note_G eight_note_B eight_note_G eight_note_D eight_note_G eight_note_B eight_note_E eight_note_C eight_note_E eight_note_G eight_note_E eight_note_C eight_note_E eight_note_G eight_note_E eight_note_C eight_note_E eight_note_G eight_note_E eight_note_C eight_note_E eight_note_G eight_note_E eight_note_C eight_note_E eight_note_G eight_note_E eight_note_C eight_note_E eight_note_G eight_note_E eight_note_C eight_note_E eight_note_G eight_note_E eight_note_C eight_note_E eight_note_G eight_note_E eight_note_C eight_note_C eight_note_E eight_note_E eight_note_C eight_note_C eight_note_E eight_note_E eight_note_C eight_note_C eight_note_E eight_note_E eight_note_C eight_note_C eight_note_E eight_note_E eight_note_C eight_note_C eight_note_E eight_note_E eight_note_C eight_note_C eight_note_E whole_note_rest eight_note_G eight_note_E eight_note_G eight_note_B eight_note_G eight_note_E eight_note_G eight_note_B eight_note_G eight_note_E eight_note_G eight_note_B eight_note_G eight_note_E eight_note_G eight_note_B eight_note_G eight_note_E eight_note_G eight_note_B eight_note_G eight_note_E eight_note_G eight_note_B eight_note_G eight_note_E eight_note_G eight_note_B eight_note_G eight_note_E eight_note_G eight_note_B];

soundsc(melody);

