function weights = delta_rule(training_set,
                              desired_values,
                              learning_rate,
                              iterations)
    weights = [0, 0, 0];
    ts_rows = rows(training_set);
    ts_cols = columns(training_set);

    for i = 1:iterations
        error_count = 0;
        out = zeros(4, 1);

        for i = 1:ts_rows
            out(i) = dot(training_set(i, :), weights);
            delta = desired_values(i) - out(i);

            if (delta ~= 0)
                error_count += 1;
                for j = 1:ts_cols
                    weights(j) = weights(j) + learning_rate*delta*training_set(i,j);
                endfor
            endif
        endfor

        if (error_count == 0)
            break;
        endif
    endfor
endfunction
