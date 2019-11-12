I=imread('coins.png');

[row,column]=size(I);
k = uint8(ones(row+4,column+4));



    for i = 1: row
        for j = 1:column;
            if i<5 || j<5 || i>row-5 || j>column-5
               k(i,j) = 0;
            elseif I(i,j)<128
                %disp(I(i,j));
               k(i,j) = 0; 
            else
               k(i,j) = 255;  
              % disp(I(i,j));
            end
        end
    end

disp(k);
figure,imshow(k); title('Binary Image');
stel=[1 1 1; 0 1 0; 1 1 0];
disp(stel(2,1));
t = uint8(k);

    for i = 1: row
        for j = 1:column;
            if k(i,j) ==255 || k(i,j+1) ==255 || k(i,j+2) ==255 ||   k(i+2,j) ==255 || k(i+1,j+1) ==255 || k(i+2,j+1) ==255
                t(i+1,j+1)=255;
               
            end
        end
    end
 figure,imshow(t); title('Binary Image');   
 