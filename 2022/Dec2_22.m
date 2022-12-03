clc
clear
close all
tic

[~, guide] = xlsread('Dec2Input.xlsx');

guide = split(guide);
<<<<<<< HEAD
score = zeros(length(guide),1);

for i = 1:length(guide)
    if isequal(guide(i,2), {'X'})
        if isequal(guide(i,1), {'A'})
            score(i) = 4;
        end
        if isequal(guide(i,1), {'B'})
            score(i) = 1;
        end
        if isequal(guide(i,1), {'C'})
            score(i) = 7;
        end
    end

    if isequal(guide(i,2), {'Y'})
        if isequal(guide(i,1), {'A'})
            score(i) = 8;
        end
        if isequal(guide(i,1), {'B'})
            score(i) = 5;
        end
        if isequal(guide(i,1), {'C'})
            score(i) = 2;
        end
    end

    if isequal(guide(i,2), {'Z'})
        if isequal(guide(i,1), {'A'})
            score(i) = 3;
        end
        if isequal(guide(i,1), {'B'})
            score(i) = 9;
        end
        if isequal(guide(i,1), {'C'})
            score(i) = 6;
        end
    end
end

total = sum(score(:,1));

score_2 = zeros(length(guide(:,1)));

for i = 1:length(guide)
    if isequal(guide(i,2), {'X'})
        if isequal(guide(i,1), {'A'})
            score_2(i) = 3;
        end
        if isequal(guide(i,1), {'B'})
            score_2(i) = 1;
        end
        if isequal(guide(i,1), {'C'})
            score_2(i) = 2;
        end
    end

    if isequal(guide(i,2), {'Y'})
        if isequal(guide(i,1), {'A'})
            score_2(i) = 4;
        end
        if isequal(guide(i,1), {'B'})
            score_2(i) = 5;
        end
        if isequal(guide(i,1), {'C'})
            score_2(i) = 6;
        end
    end

    if isequal(guide(i,2), {'Z'})
        if isequal(guide(i,1), {'A'})
            score_2(i) = 8;
        end
        if isequal(guide(i,1), {'B'})
            score_2(i) = 9;
        end
        if isequal(guide(i,1), {'C'})
            score_2(i) = 7;
        end
    end
end

final = sum(score_2(:,1));
toc