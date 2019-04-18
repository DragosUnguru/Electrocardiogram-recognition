function characteristic = getCharVect(signal, spikeNumber)

characteristic = zeros(2 * spikeNumber, 1);

P1 = fftReady(signal);

[maxA, maxP] = maxk(P1, spikeNumber);
maxP = maxP / 10 - 0.1;
maxP = maxP * 2 * pi; % pulsation
%   Fs / length(signal) = 500/5000 = 0.1
%   (so we divide by 10 to obtain the
%   frequency from the indices of amplitude(of P1))
%   Substraction of 0.1 is because it starts at 0
%   but Matlab doesn't know that

characteristic(1:2:2 * spikeNumber) = maxA;
characteristic(2:2:2 * spikeNumber) = maxP;

end