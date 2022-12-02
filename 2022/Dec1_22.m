clc
clear
close all
tic

A = xlsread('Dec1Input.xlsx');
TF = isnan(A);
[A_ind, A_width] = size(A);
B = zeros(A_ind,1);
count = 1;

for i = 1:A_ind
    if TF(i) == 1
        count = count + 1;
    end
    
    if TF(i) == 0
        B(count) = B(count) + A(i);
    end
end

[B_max, B_ind] = max(B(:));

fprintf('Elf %1.0f is carrying %5.0f calories. \n',B_ind,B_max);

S = sum(maxk(B,3));

fprintf('The top three Elves are carrying %6.0f calories. \n',S);
toc