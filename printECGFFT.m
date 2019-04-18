function printECGFFT(signal)

Fs = 500;
% Sampling frequency
T = 1/Fs;
L = length(signal);
t = (0:L-1)*T;
f = Fs*(0:(L/2))/L;    

Y = fft(signal);
P2 = abs(Y/L);
P1 = P2(1:L/2+1);
P1(2:end-1) = 2*P1(2:end-1);
plot(f,P1)
title('Amplitude Spectrum of S(t)')
xlabel('f (Hz)')
ylabel('|P1(f)|')
end