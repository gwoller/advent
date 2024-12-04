clc
clear variables

data = readlines('Day3Input.txt');

str = append(data(1),data(2),data(3),data(4),data(5),data(6));

expression = 'mul\(\d*,\d*\)';
str = regexp(str,expression,'match');

extractedText = extractBetween(str,'mul(',')')';

newStr = split(extractedText,',');
nums = str2double(newStr);

tot = sum(nums(:,1).*nums(:,2))

%% Part 2

clearvars -except data

str = append(data(1),data(2),data(3),data(4),data(5),data(6));

newStr = replaceBetween(str,"don't()","do()"," ",'Boundaries','inclusive');
newStr = extractBefore(newStr,"don't()");

expression = 'mul\(\d*,\d*\)';
extStr = regexp(newStr,expression,'match');

extractedText = extractBetween(extStr,'mul(',')')';

newStr = split(extractedText,',');
nums = str2double(newStr);

tot = sum(nums(:,1).*nums(:,2))
