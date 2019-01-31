clear, clc;

k = 5;
p = 1/3;

x = (0:(2^k - 1));
y = probability(x, p, k);
plot(x/(2^k), y);

function P = probability (num, p, k)
    P = (p^count_ones_in_bin(num)) * ((1 - p)^(k - count_ones_in_bin(num)));
end

function s = count_ones_in_bin (num)
    s = count_ones(decimalToBinaryVector(num));
end

function s = count_ones (bin)
    s = 0;
    for i = 1:length(bin)
        if bin(i) == 1
            s = s + 1;
        end
    end
end

