t = -1:0.001:10;
x = exp(-2*t) .* sin(3*t-1) .* heaviside(t);
plot(t,x);