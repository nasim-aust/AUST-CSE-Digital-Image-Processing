x=-360:5:360;
y1= sin(x);
hold on;
plot(x,y1,'.-r')
y2 = sin(2*x);
plot(x,y2,'+-b')
y3 = sin(x)+sin(2*x);
plot(x,y3,'*-g')
y4 = sin(x).*sin(2*x);
plot(x,y4,'.-c')
hold off;