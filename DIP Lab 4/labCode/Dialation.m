function D = Dialation(I)

[rows,col] = size(I);
D = uint8(zeros(rows,col));

kernel = ones(3,3);
kernel = kernel * (1/9);

%I = imread(D:\CSE 4228 Digital Image Processing Lab\DIP Lab 4\Necessary Images\fprint.jpg)

figure ; imshow(I)

SE = [1 1 1; 0 1 0; 1 1 0];

for i = 1 : rows
   for j = 1 : col    
           mat = I(i,j);
           a = SE- mat;
   end
end

for i=1:rows
    for j=1:col
        K(i,j) = I(i,j);
    end
end


end
    

%disp(SE)

