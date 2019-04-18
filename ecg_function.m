function person_id = ecg_function(input_signal, israw)

err = intmax;
spikeNo = 3;
% Modify 'spikeNo' to adjust the accuracy of the database
% and the characteristic array of the 'input_signal'

DB = createDB(spikeNo);

if israw == 1
    input_signal = filterSignal(input_signal);
end

charVect = getCharVect(input_signal, spikeNo);
charVect = charVect';

for i = 1:90
    dif = DB(i,:) - charVect;
    dif = dif .^ 2;
    distanceVect = abs(sqrt(dif(1:2:end) - dif(2:2:end)));
    distance = sum(distanceVect);

    if distance < err
        err = distance;
        person_id = i;
    end
end

end