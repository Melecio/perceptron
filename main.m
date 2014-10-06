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

% XOR training set
desired_xor = [0, 1, 1, 0];


printf('-----PRECEPTRON TRAINING-----\n\n')
% AND SECTION %
printf('Learning AND\n')
weights_and = perceptron_training(training_set, desired_and, threshold,
                                  learning_rate);

printf('Final weights for AND\n')
disp(weights_and)
printf('\n\n')

% OR SECTION %
printf('Learning OR\n')
weights_or = perceptron_training(training_set, desired_or, threshold,
                                  learning_rate);

printf('Final weights for OR\n')
disp(weights_or)
printf('\n\n')

% Given that XOR is linearly nonseparable, there's no single layered perceptron
% that be trained and weights learned. Thus, we must used a multiple layered
% perceptron model using the following property for XOR:
% p XOR q == (NOT p OR NOT q) AND (p or q)

printf('-----DELTA RULE TRAINING-----\n\n')

% AND SECTION %
printf('Learning AND\n')
weights_and = delta_rule(training_set, desired_and, learning_rate, 1000);
disp(weights_and)
printf('\n\n')

% OR SECTION %
printf('Learning OR\n')
weights_or = delta_rule(training_set, desired_or, learning_rate, 1000);
disp(weights_or)
printf('\n\n')

% XOR SECTION %
printf('Learning XOR\n')
weights_xor = delta_rule(training_set, desired_xor, learning_rate, 1000);
disp(weights_xor)
printf('\n\n')
