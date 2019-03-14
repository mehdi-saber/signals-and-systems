t = -1:0.001:10;
x = exp(-t) .* heaviside(t) + 4* cos(2*t-2);
plot(t,x);