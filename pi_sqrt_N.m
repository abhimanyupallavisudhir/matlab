clear, clc;

N = 10;

P = [(N-1)/(N+1), -(2*N)/(N+1); 2/(N+1), (N-1)/(N+1)];
v = [0; -1];

disp((P^0)*v);
disp((P^1)*v);
disp((P^2)*v);
disp((P^3)*v);
disp((P^4)*v);
disp((P^5)*v);
disp((P^6)*v);

function y = Y(v)
    y = v(2);
end