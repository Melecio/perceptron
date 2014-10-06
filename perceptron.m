% Initialize the weights
threshold = 0;
learning_rate = 0.1;

% AND training set
training_set = [1, 0, 0;
                1, 0, 1;
                1, 1, 0;
                1, 1, 1];

desired = [0, 0, 0, 1];

weights = learn_w(training_set, desired, threshold, learning_rate);

disp(weights)
