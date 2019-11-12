x = -360:5:360;
%disp(x);
y1 = sind(2*x);
plot(x,y1,'.-r');
hold on;
y2 = cosd(2*x);
plot(x,y2,'.-g');
y3 = sind(x)+sind(2*x);
plot(x,y3,'.-b');
y4 = y1 + y2 + y3;
plot(x,y4,'.-y');
hold off;

