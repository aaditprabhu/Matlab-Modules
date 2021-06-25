% for loop
% a = [1 2 3 4 5 6];
% b = [6 5 4 3 2 1];
% c = 5:10;
% count = 0;
% for i= 1:6
%     count = count + a(i);
% end
% disp(count);
% 
% plot(a,b,a,c);

x = 0:pi/100:2*pi;

% sine function
y1 = sin(x);

% cosine function
y2 = cos(x);

plot(x,y1,x,y2);