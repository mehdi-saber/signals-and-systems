n = -10:50;
x = 3*heaviside(n-2)+(1-exp(0.2.*n)).*heaviside(1-n);
stem(n,x)
t = -10:1:50;
x = 3.*heaviside(t-2)+(1-exp(0.2*t)).*heaviside(-n+1);
stem(t,x);