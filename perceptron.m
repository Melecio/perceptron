% Initialize the weights
weights = [0, 0, 0];
threshold = 0;
learning_rate = 0.1;

% AND training set
training_set = [1, 0, 0;
                1, 0, 1;
                1, 1, 0;
                1, 1, 1];

desired = [0, 0, 0, 1];

while (true)
    printf('---------------------------------\n')
    error_count = 0;
    out = zeros(4, 1);

    for i = 1:4
        disp(weights)
        result = dot(training_set(i, :), weights);
        if (result > threshold)
            out(i) = 1;
        else
            out(i) = 0;
        endif

        delta = desired(i) - out(i);

        if (delta ~= 0)
            error_count += 1;
            for j = 1:3
                weights(j) = weights(j) + learning_rate*delta*training_set(i,j);
            endfor
        endif
    endfor

    if (error_count == 0)
        break;
    endif
endwhile

disp(weights)
