clc
clear variables

data = readlines('Day5Input.txt');

idx = find(data=="");
rules = split(data(1:idx-1),'|');
pages = arrayfun(@(x) split(x,','), data(idx+1:end),'uni',false);

for i = 1:numel(pages)
    idx = all(ismember(rules,pages{i}),2);
    d{i,:} = digraph(rules(idx,1), rules(idx,2));
    ts{i,:} = toposort(d{i})';
end

a = cellfun(@(g,s) string(g.Nodes.Name(s)), d, ts, 'uni', false);
initiallyCorrect = cellfun(@(x,y) all(x==y), pages, a);
p1 = sum(str2double(cellfun(@(x) x(ceil(end/2)), a(initiallyCorrect))));
p2 = sum(str2double(cellfun(@(x) x(ceil(end/2)), a(~initiallyCorrect))));