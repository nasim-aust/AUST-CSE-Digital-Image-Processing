A = floor(rand(5,5)*10);
B = ones(5,5)*9;
C = A + B;
[row, col] = size(C); % size() returns the dimension of a matrix
D = zeros(row, col);
for i = 1:row 
    for j = 1:col
      if i==j D(i,j) = (C(i,j));
         end
    end
end
disp(D)