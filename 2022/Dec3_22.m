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

sum = 0;

for ind = 1:3:length(sack)
    str1 = string(sack(ind));
    str2 = string(sack(ind + 1));
    str3 = string(sack(ind + 2));

    elf_one = split(str1,'');
    elf_one(1) = [];
    elf_one(length(elf_one)) = [];

    elf_two = split(str2,'');
    elf_two(1) = [];
    elf_two(length(elf_two)) = [];

    elf_tre = split(str3,'');
    elf_tre(1) = [];
    elf_tre(length(elf_tre)) = [];

    o = 1;
    t = 1;
    tr = 1;
    

    while o <= length(elf_one)
        s1 = elf_one(o);
        o = o + 1;
        while t <= length(elf_two)
            s2 = elf_two(t);
            t = t + 1;
            if strcmp(s1,s2)
                while tr <= length(elf_tre)
                    s3 = elf_tre(tr);
                    tr = tr + 1;
                    if strcmp(s2,s3)
                        for c = 1:length(scores)
                            if isequal(scores(c), s3)
                                sum = sum + c;
                                o = length(elf_one) + 1;
                                t = length(elf_two) + 1;
                                tr = length(elf_tre) + 1;
                            end
                        end
                    end
                end
                tr = 1;
            end
        end
        t = 1;
    end
end

toc