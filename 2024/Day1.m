clc
clear variables

data = readmatrix('Day1Input.txt','Delimiter','  ');
data2 = data;
x = 0;
y = 0;

for i = 1:length(data)
    [m1, i1] = min(data(:,1));
    [m2, i2] = min(data(:,2));
    x = x + abs(m1 - m2);

    a = data2(i, 1);
    A = nonzeros(data2(:,2) == a);
    y = a * length(A) + y;

    data(i1,1) = NaN;
    data(i2,2) = NaN;
end

