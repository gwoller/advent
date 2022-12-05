clc
clear
close all
tic

input = readcell('Dec4Input.txt');

left = input(:,1);
right = input(:,2);

left = split(left,'-');
right = split(right,'-');

pairs = 0;
overlap = 0;

for i = 1:length(input)

    l1 = str2double(cell2mat(left(i,1)));
    l2 = str2double(cell2mat(left(i,2)));
    r1 = str2double(cell2mat(right(i,1)));
    r2 = str2double(cell2mat(right(i,2)));

    if l2 >= r2 && r1 >= l1 || r2 >= l2 && l1 >= r1
        pairs = pairs + 1;
    end

    if r2 >= l2 && l2 >= r1 || l2 >= r2 && l1 <= r2
        overlap = overlap + 1;
    end
end

toc