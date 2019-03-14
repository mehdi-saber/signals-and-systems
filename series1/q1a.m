t = -1:0.001:10;
x = 2 * exp(-3*t) .* heaviside(t);
plot(t,x);