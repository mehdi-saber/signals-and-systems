% uiopen('*.mp3')
% my_fs=1000;
% sound(data,my_fs);
% my_fs=20000;
% sound(data,my_fs);
% my_fs=40000;
% sound(data,my_fs);
% my_fs=100000;
% sound(data,my_fs);

figure(1);
subplot(2,1,1);
plot(data(:,1));
title('Right');
subplot(2,1,2)
plot(data(:,2));
title('LEFT');

d_size=length(data(:,1));
seconds=d_size/fs;
second2fade=2;
finish_index=d_size-second2fade*fs;
t=1:d_size;

f = heaviside(t-finish_index).*exp((finish_index-t)/fs*second2fade)+heaviside(-t+finish_index);
figure(2);
plot(t,f)

f=[f.',f.'];
fade_data = data.*f;
sound(fade_data,fs);