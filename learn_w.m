function weights = learn_w(ts, d, t, lr)
    weights = [0, 0, 0];

    while (true)
        printf('---------------------------------\n')
        error_count = 0;
        out = zeros(4, 1);

        for i = 1:4
            disp(weights)
            result = dot(ts(i, :), weights);
            if (result > t)
                out(i) = 1;
            else
                out(i) = 0;
            endif

            delta = d(i) - out(i);

            if (delta ~= 0)
                error_count += 1;
                for j = 1:3
                    weights(j) = weights(j) + lr*delta*ts(i,j);
                endfor
            endif
        endfor

        if (error_count == 0)
            break;
        endif
    endwhile
endfunction
