clear, clc;

% we start here because starting with [0, 1] causes indexing problems
s = [0, 1/4; 3/4, 1];
N = 10;

for i = 1:(N - 1)
    s = rec_replace(s);
end

plot(s(1:length(s), 1), (1:length(s))/length(s));

function s = rec_replace (s)
    for i = 1:2:(2*length(s))
        s = replace(s, i);
    end
end

function s = replace (s, i)
    si = s(i, :);
    t1 = [si(1), 3/4 * si(1) + 1/4 * si(2)];
    t2 = [1/4 * si(1) + 3/4 * si(2), si(2)];
    s = [s(1:(i-1), :); t1; t2; s((i+1):length(s), :)];
end