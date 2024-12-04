clc
clear
close all
tic

input = readtable('Dec5Input.xlsx');
movements = readmatrix('Dec5Input.txt','Delimiter', {'move', 'from', 'to'});
movements(:,1) = [];

inp = table2array(input);

for i = 1:length(movements)
    [leng, ~] = size(inp(:,movements(i,3)));
    inp(leng + 1:(leng + movements(i,1)),movements(i,3)) = inp(1:movements(i,1),movements(i,2));
    inp(1:movements(i,1),movements(i,2)) = {''};
    for l = 1:length(inp)
        for w = 1:width(inp)
            if isequal(inp(l,w),{''})
                inp(l,w) = {'NaN'};
            end
        end
    end
    %[leng, ~] = size(input(:,someVariable));
end




