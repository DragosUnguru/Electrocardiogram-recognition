function signal = filterSignal(rawSignal)

%rawSignal = lowpass(rawSignal, 22, 500);
%signal = highpass(rawSignal, 0.7, 500);

[B, A] = cheby2(4, 75, [0.7 825], 'bandpass', 's');
H = tf(B, A);
% Design a 4th-order bandpass Chebyshev Type II filter 
% with 75 dB of stopband attenuation

t = (0 : 4999) / 500;
% Sampling frequency

signal = lsim(H * 0.978, rawSignal, t);

end