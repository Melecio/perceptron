function weights = perceptron_training(training_set, desired_output, threshold,
                                       learning_rate)

    weights = [0, 0, 0];
    ts_rows = rows(training_set);
    ts_cols = columns(training_set);

    while (true)
        error_count = 0;
        out = zeros(4, 1);

        for i = 1:ts_rows
            result = dot(training_set(i, :), weights);
            if (result > threshold)
                out(i) = 1;
            else
                out(i) = 0;
            endif

            delta = desired_output(i) - out(i);

            if (delta ~= 0)
                error_count += 1;
                for j = 1:ts_cols
                    weights(j) += learning_rate*delta*training_set(i,j);
                endfor
            endif
        endfor

        if (error_count == 0)
            break;
        endif
    endwhile
endfunction
