function DB = createDB(spikeNo)

L = 5000;
f = 10000*(0:(L/2))/L;
DB = zeros(90, 2 * spikeNo);

for i = 1:90
    
    if i < 10
        targetFile = sprintf('./ECG-DB/Person_0%d/rec_1m.mat', i);
    else
        targetFile = sprintf('./ECG-DB/Person_%d/rec_1m.mat', i);
    end    %That 0 before single digits (< 9) ...

    load (targetFile);

    DB(i, :) = getCharVect(val(2,:), spikeNo);
    
end

end