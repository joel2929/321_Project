N = 64;  % number of samples in omega
k = 0:N-1;
% omega_a = (2*pi/N)*(0:(N-1));

% Xa = M*diric(omega_a,M).*exp(-1i*4*omega_a);
% xa = ifft(Xa);

Xa = fft(xa, 64);
Xb = fft(xb, 64);
Xc = fft(xc, 64);


figure(1)
subplot(3,1,1)
stem(k,abs(Xa));
title("Xa")
xlabel("k")

subplot(3,1,2)
stem(k,abs(Xb));
title("Xb")
xlabel("k")

subplot(3,1,3)
stem(k,abs(Xc));
title("Xc")
xlabel("k")

