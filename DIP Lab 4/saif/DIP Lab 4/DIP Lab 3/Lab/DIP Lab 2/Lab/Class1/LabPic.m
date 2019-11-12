I = imread('cameraman.png');
T = imfinfo('cameraman.png');
G= imread('coins.jpg')
pix = I(1,1);
disp(pix)
%figure; imshow(I);figure; imshow(G);
%figure; plot(I(1:10),G(1:10),'*'); 
%figure; plot(I(1:10),G(1:10)*4,'-');
[row, col] = size(I);
K = uint8(ones(row, col));
disp(K)
for i = 1:row 
    for j = 1:col 
        K(j,i) = I(i,j); 
    end
end
figure; imshow(K);