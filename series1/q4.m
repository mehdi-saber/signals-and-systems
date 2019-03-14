function [mean,median,var,min,max] = q4(x)
%sort
s_x=x;
for i=1:length(s_x)
    for j=i:length(s_x)
        if s_x(j)>s_x(i)
            temp=s_x(i);
            s_x(i)=s_x(j);
            s_x(j)=temp;
        end
    end
end

% calc mean
sum = 0;
for i=x
   sum=sum+i; 
end
mean = sum/length(x);

% calc median
middle_index=length(s_x)/2;
if mod(length(s_x),2) == 0
    median = (s_x(middle_index+1)+s_x(middle_index))/2;
else
    median = s_x(ceil(length(s_x)/2));
end

% calc mode
c_x = zeros(1,length(s_x));
for i=1:length(s_x)
    if i>1 && s_x(i-1)==s_x(i)
        c_x(i)=c_x(i-1)+1;
    else
        c_x(i)=1;
    end
end
mode_index=1;
for i=1:length(c_x)
    if c_x(i)>=c_x(mode_index)
        if c_x(i)==c_x(mode_index)&&s_x(i)>s_x(mode_index)
            disp(s_x)
            continue;
        end
        mode_index=i;
    end
end
mode=s_x(mode_index);

% calc var
sum = 0;
for i=1:length(x) 
    sum = sum + (x(i)-mean)^2;
end
var = sum/(length(x)-1);

% calc min
min = s_x(length(x));
% calc max
max = s_x(1);

disp(mean)
disp(median)
disp(mode)
disp(var)
disp(min)
disp(max)
end
