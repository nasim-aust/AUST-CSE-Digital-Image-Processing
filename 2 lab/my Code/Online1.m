
y1 = zeros(1, 5);
y2 = zeros(1, 5);
y3 = zeros(1, 5);
y4 = zeros(1, 5);

i=1;
%X1=[-360, -180, 0, 180, 360];
X1=zeros(1, 144);
for x = -360 : 5 :360
  
    %disp(x)
    X1(1,i)=x;
    y1(1,i) = sind(x);
    disp(sin(x))
    y2(1,i) = sind (2*x);
    y3(1,i) = sind(x)+sind(2*x);
    y4(1,i) = sind(x)* sind(2*x); 
    i=i+1;
end

plot(X1,y1,'*-')
hold on;
plot(X1,y2,'*-')
hold on;
plot(X1,y3,'*-')
hold on;
plot(X1,y4,'*-')
hold off;
