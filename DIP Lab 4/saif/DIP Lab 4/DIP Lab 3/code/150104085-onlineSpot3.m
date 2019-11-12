clear;
I = imread('coins.png');
% because it's an color image.
%I = rgb2gray(I);

K = Filtering(I);

figure ; imshow(I)
figure ; imshow(K)

%imwrite(K,'filter_output.jpg');