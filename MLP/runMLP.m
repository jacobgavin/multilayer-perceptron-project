load data.mat
learningrate = 0.04;
numOfIterations = 1000;
hiddenUnits = 25;

a = - (sqrt(6) / sqrt(8000));
b = sqrt(6) / sqrt(8000);

W_1 = (b-a) .* rand(hiddenUnits, 2304) + a;
W_2 = (b-a) .* rand(1, hiddenUnits) + a;


mainMLP(numOfIterations, learningrate, ytrain, W_1, W_2, Xtest, Xtrain, ytest)