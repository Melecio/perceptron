% Initialize values
threshold = 0;
learning_rate = 0.1;

training_set = [1, 0, 0;
                1, 0, 1;
                1, 1, 0;
                1, 1, 1];

% AND desired values
desired_and = [0, 0, 0, 1];

% OR training set
desired_or = [0, 1, 1, 1];


printf('Learning AND\n')
weights = learn_w(training_set, desired_and, threshold, learning_rate);

printf('Final weights for AND\n')
disp(weights)
printf('\n\n')

printf('Learning OR\n')
weights = learn_w(training_set, desired_or, threshold, learning_rate);

printf('Final weights for OR\n')
disp(weights)
printf('\n\n')
