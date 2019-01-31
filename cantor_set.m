clear, clc;

N = 10;
% chunk removed each time
h = 1/3;
% we start here because starting with [0, 1] causes indexing problems
s = [0, (1 - h)/2; (1 + h)/2, 1];

for i = 1:(N - 1)
    s = rec_replace(s, h);
end

plot(s(1:length(s), 1), (1:length(s))/length(s));

function s = rec_replace (s, h)
    for i = 1:2:(2*length(s))
        s = replace(s, h, i);
    end
end

function s = replace (s, h, i)
    si = s(i, :);
    t1 = [si(1), (1 + h)/2 * si(1) + (1 - h)/2 * si(2)];
    t2 = [(1 - h)/2 * si(1) + (1 + h)/2 * si(2), si(2)];
    s = [s(1:(i-1), :); t1; t2; s((i+1):length(s), :)];
end