clc
clear variables
close all

%% Part One
data = readlines("Dec1Input.txt");

data = regexprep(data,'[a-zA-Z\s]','');

total = 0;

for i = 1:length(data)
    A = char(data(i));
    numMat(i,:) = [A(1), A(end)];
    total = str2num([A(1), A(end)]) + total;
end

%% Part Two
data = readlines("Dec1Input.txt");

for i = 1:length(data)
    A = char(data(i));
    for i = 1:length(A)
        
    numMat(i,:) = [A(1), A(end)];
    total = str2num([A(1), A(end)]) + total;
end