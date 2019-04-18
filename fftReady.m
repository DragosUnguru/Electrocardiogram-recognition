function [P1, Y] = fftReady(signal)

Y = fft(signal);
P2 = abs(Y/length(signal));
P1 = P2(1:length(signal)/2+1);
P1(2:end-1) = 2*P1(2:end-1);

end