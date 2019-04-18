function test

fprintf("\t *Running tests for filtered ECGs*\n");
passedTests = 0;
for i = 1:90
    
    if i < 10
        targetFile = sprintf('./ECG-DB/Person_0%d/rec_1m.mat', i);
    else
        targetFile = sprintf('./ECG-DB/Person_%d/rec_1m.mat', i);
    end

    load (targetFile);
    
    result = ecg_function(val(2,:), 0);
    
    if result == i
        fprintf('Person_%d test ......... PASSED\n', i);
        passedTests = passedTests + 1;
    else
        fprintf('Person_%d test ......... FAILED\n', i);
    end
    
end
fprintf("TOTAL_FILTERED ..................................... %d\n\n", passedTests);

fprintf("\t *Running tests for raw ECGs*\n");
passedTests = 0;
for i = 1:90
    
    if i < 10
        targetFile = sprintf('./ECG-DB/Person_0%d/rec_1m.mat', i);
    else
        targetFile = sprintf('./ECG-DB/Person_%d/rec_1m.mat', i);
    end

    load (targetFile);
    
    result = ecg_function(val(1,:), 1);
    
    if result == i
        fprintf('Person_%d test ......... PASSED\n', i);
        passedTests = passedTests + 1;
    else
        fprintf('Person_%d test ......... FAILED\n', i);
    end
end
fprintf("TOTAL_RAW ..................................... %d\n\n", passedTests);
end