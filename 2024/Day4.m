clc
clear variables

data = readlines('Day4Input.txt');

str = split(data,"");
str(:,1) = [];

x = count(str,'X');
m = count(str,'M')*2;
a = count(str,'A')*3;
s = count(str,'S')*4;

input = x+m+a+s;

[xi, xj] = find(x==1);

count = 0;

ogker = [1 2 3 4];
ogker2 = [1 0 0 0;
          0 2 0 0;
          0 0 3 0;
          0 0 0 4];

for i = 0:3
    ker = rot90(ogker,i);
    ker2 = rot90(ogker2,i);

    convolution = conv2(input,ker, 'valid');
    convolution2 = conv2(input,ker2, 'valid');
    kernel_sum = sum(ker(:).^2);
    kernel_sum2 = sum(ker2(:).^2);
    
    result = (convolution == kernel_sum);
    result2 = (convolution2 == kernel_sum2);

    count = count + sum(result(:)) + sum(result2(:));
end



disp(count)


