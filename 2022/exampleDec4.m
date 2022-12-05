clc
clear
close all
tic

input = readmatrix("Dec4Input.txt","EmptyLineRule","skip","Delimiter",{'-',','});

part1 = nnz(((input(:,1) >= input(:,3)) & (input(:,2) <= input(:,4))) | ((input(:,1) <= input(:,3)) & (input(:,2) >= input(:,4))));
part2 = length(input) - nnz((input(:,2) < input(:,3)) | (input(:,4) < input(:,1)));

toc

readmatrix("Dec4Input.txt","EmptyLineRule","skip","Delimiter",{'-',','})