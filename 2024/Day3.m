clc
clear variables

data = readlines('Day3Input.txt');

%% Part 1
str = strjoin(data,'\n');

tot = funcDay3(str)

%% Part 2

newStr = replaceBetween(str,"don't()","do()"," ",'Boundaries','inclusive');
newStr = extractBefore(newStr,"don't()");

tot = funcDay3(newStr)

%% Function
function tot = funcDay3(str)
    
    expression = 'mul\(\d*,\d*\)';
    str = regexp(str,expression,'match');
    
    extractedText = extractBetween(str,'mul(',')')';
    
    nums = str2double(split(extractedText,','));
    
    tot = sum(nums(:,1).*nums(:,2));

end