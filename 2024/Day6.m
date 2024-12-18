clc
clear variables

data = readlines('Day6Input.txt');

map = split(data,'');
map(:,1) = [];

[l, w] = size(map);

for i = 1:l
    for j = 1:w
        mat(i,j) = double(map(i,j));  
    end
end

[idy, idx] = find(map == '^' | map == 'v' | map == '>' | map == '<');

if map(idy,idx) == '^'
    dir = 1;
elseif map(idy,idx) == '>'
    dir = 2;
elseif map(idy,idx) == 'v'
    dir = 3;
elseif map(idy,idx) == '<'
    dir = 4;
else
    return
end

in = 1;

while in == 1
    try
        map(idy-1,idx);
        map(idy,idx-1);
        map(idy+1,idx);
        map(idy,idx+1);
    catch
        in = 0;
        break
    end

    if dir == 1 && (map(idy-1,idx) == '.' || map(idy-1,idx) == 'X')
        map(idy-1,idx) = '^';
        map(idy,idx) = 'X';
        idy = idy-1;
    elseif dir == 2 && (map(idy,idx+1) == '.' || map(idy,idx+1) == 'X')
        map(idy,idx+1) = '>';
        map(idy,idx) = 'X';
        idx = idx+1;
    elseif dir == 3 && (map(idy+1,idx) == '.' || map(idy+1,idx) == 'X')
        map(idy+1,idx) = 'v';
        map(idy,idx) = 'X';
        idy = idy+1;
    elseif dir == 4 && (map(idy,idx-1) == '.' || map(idy,idx-1) == 'X')
        map(idy,idx-1) = '<';
        map(idy,idx) = 'X';
        idx = idx-1;
    elseif dir == 1 && map(idy-1,idx) == '#'
        map(idy,idx) = '>';
    elseif dir == 2 && map(idy,idx+1) == '#'
        map(idy,idx) = 'v';
    elseif dir == 3 && map(idy+1,idx) == '#'
        map(idy,idx) = '<';
    elseif dir == 4 && map(idy,idx-1) == '#'
        map(idy,idx) = '^';
    else
        in = 0;
    end

    if map(idy,idx) == '^'
        dir = 1;
    elseif map(idy,idx) == '>'
        dir = 2;
    elseif map(idy,idx) == 'v'
        dir = 3;
    elseif map(idy,idx) == '<'
        dir = 4;
    else
        in = 0;
    end

end

tot = nnz(count(map,'X'))+1;