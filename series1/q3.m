t = 0:1:100;
for m=1:-0.001:0
    x=5*(cos(t*pi/12)).*exp((m+(m/2)*1j).*-t);
    e=sum(abs(x).^2);
    if e>300
        disp(m+0.001);
        break
    end
end
subplot(2,1,1)
stem3(t,real(x),imag(x))
title('3d x');
xlabel('n');
ylabel('real');
zlabel('imaginary');
subplot(2,1,2)
stem3(2)
plot(t,real(x),t,imag(x))
title('2d x');
xlabel('real/imaginary');
ylabel('n');