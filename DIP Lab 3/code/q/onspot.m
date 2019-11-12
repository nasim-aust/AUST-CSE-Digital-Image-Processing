clear;
I = imread('coins.jpg');
% because it's an color image.
I = rgb2gray(I);

K = Filtering(I);

imwrite(K,'filter_output.jpg');