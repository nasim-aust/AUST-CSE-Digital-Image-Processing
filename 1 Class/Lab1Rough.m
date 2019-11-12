A = floor(rand(5,5)*10);
B = ones(5,5)*9;
C = A + B;
[row, col] = size(C);
I = eye(row, col);
D = C.*I;
disp(D)