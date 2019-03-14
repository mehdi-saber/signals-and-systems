t = -10:1:50;
x = 0.5.^t.*(sin(pi*t/4)+cos(pi*t/4));
stem(t,x);