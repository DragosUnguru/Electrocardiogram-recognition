function printECG(signal)

t = 1:5000;
plot(t, signal);

xlabel('Time(s)');
ylabel('Amplitude');

end