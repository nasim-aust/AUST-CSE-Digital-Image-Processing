clear;
I = imread('peppers_color.jpg');
%figure; imshow(I);
[row, col, dim] = size(I);
K = uint8(ones(row, col));

for i = 1:row
    for j = 1:col
            K(i,j) = floor(0.45 * I(i,j,1) + 0.35*I(i,j,2) + 0.20 * I(i,j,3));
    end
end

figure; imshow(K);
