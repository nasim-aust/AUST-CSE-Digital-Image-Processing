I = imread('cameraman.png');
figure; imshow(I);
[row, col] = size(I);
K = uint8(ones(row, col,3));
%disp(K(1,1,1))
for i = 1:row 
    for j = 1:col 
        if I(i,j)>=0 && I(i,j)<=127
            K(i,j,1) = 0; 
            K(i,j,2) = 0; 
            K(i,j,3) = 255; 
        else
            K(i,j,1) = 255; 
            K(i,j,2) = 0; 
            K(i,j,3) = 0; 
        end
    end
end
figure; imshow(K);