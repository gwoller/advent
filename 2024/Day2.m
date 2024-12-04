clc
clear variables

data = readmatrix('Day2Input.txt');
safe = zeros(length(data),1);

for i = 1:length(data)
    A = rmmissing(data(i,:));
    for j = 1:(width(A)-1)
        a(j) = A(j) - A(j+1);
        
        if abs(a(j)) <= 3 && a(j) ~= 0
            x(i,j) = 1;
        else
            x(i,j) = 0;
        end
        
    end

    if nnz(x(i,:)) >= (length(A)-1) && abs(sum(a)) == sum(abs(a))
        safe(i) = 1;
    else
        safe(i) = 0;
    end
    clearvars -except data safe x
end

tot = nnz(safe(:));


%% Part 2
clear variables
input = readmatrix("a02.txt","Range",1);
diff_in = diff(input,1,2);

check = @(in) (all(in>0 | isnan(in),2) | all(in<0 | isnan(in),2))...
            & max(abs(in),[],2)<4;

safep1 = check(diff_in);

part1 = sum(safep1)

candidates = input(~safep1,:); % part 2: check those not already solved by part 1

n = size(candidates,2);

replicated = repmat(candidates,1,1, n);

eye_matrix = permute(repmat(~eye(n),1,1,size(replicated,1)),[3 1 2]);
one_removed = reshape(replicated(eye_matrix),[],n-1,n);
one_removed_diff = diff(one_removed,1,2);
part2 = sum(any(check(one_removed_diff),3)) + part1 % add those from part 1