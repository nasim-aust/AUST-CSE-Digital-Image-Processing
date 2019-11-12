x = 1:50; y = x.^3;
figure; % new window 
plot(x,y,'.-b'); 
hold on;
y = (x+10).^3; 
figure; % new window 
plot(x,y,'.-r');
hold off;