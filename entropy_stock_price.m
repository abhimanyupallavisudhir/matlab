u = 1.1;
d = 0.9;
n = 20;
p = 1/2;
q = 1 - p;

i = 0:n;
price = u .^ i .* d .^ (n - i);
S = entropy (n, i, p, q);
plot (price, S);

function S = entropy (n, i, p, q)
    S = log ((factorial(n) ./ (factorial(n - i) .* factorial(i))) .* p .^ i .* q .^ (n - i));
end