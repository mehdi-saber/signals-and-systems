t = -1:0.001:10;
x=zeros(1,length(t));
for i=1:length(t)
    t0=t(i);
    if t0>=0
        x(1,i)=exp(-3*t0)-exp(-6*t0);
    elseif t0<0
        x(1,i)=0;
    end;
end;
plot(t,x);