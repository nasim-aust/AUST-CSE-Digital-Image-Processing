I = imread('cameraman.png');
figure; imshow(I);
[row, col] = size(I);
K = uint8(ones(row, col));
for i = 1:row 
    for j = 1:col
       if(I(i,j)>=100)
          K(i,j)= 255;
       else
           K(i,j)=0;
       end
       
    end
end
figure; imshow(K);