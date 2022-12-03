clc
clear
close all
tic

[~, guide] = xlsread('Dec2Input.xlsx');

guide = split(guide);

for i = 1:length(guide)
    if guide(i,1) == 'A'
        if guide(i,2) == 'X'
            guide(i,3) = 4;
        end
        if guide(i,2) == 'Y'
            guide(i,3) = 8;
        end
        if guide(i,2) == 'Z'
            guide(i,3) = 3;
        end
    end
end
