x=-360:5:360;
y1= sind(x);
hold on;
plot(x,y1,'.-r')
y2 = sind(2*x);
plot(x,y2,'+-b')
y3 = sind(x)+sind(2*x);
plot(x,y3,'*-g')
y4 = sind(x).*sind(2*x);
plot(x,y4,'.-c')
hold off;