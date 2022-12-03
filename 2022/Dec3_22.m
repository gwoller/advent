clc
clear
close all
tic

sack = readcell('Dec3Input.txt');
scores = readcell('Dec3Scores.xlsx');
total = 0;

for i = 1:length(sack)
    str = string(sack(i));
    pack = split(str,'');
    pack(1) = [];
    pack(length(pack)) = [];

    k = 1;
    l = length(pack) / 2 + 1;

    while k <= (length(pack) / 2)
        s1 = pack(k);
        k = k + 1;
        while l <= length(pack)
            s2 = pack(l);
            l = l + 1;
            if strcmp(s1,s2)
                for c = 1:length(scores)
                    if isequal(scores(c), s1)
                        total = total + c;
                        l = length(pack) + 1;
                        k = length(pack);
                    end
                end
            end
        end
        l = length(pack) / 2 + 1;
    end
end

toc