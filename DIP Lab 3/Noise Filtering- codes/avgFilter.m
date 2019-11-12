function avgFilter()
    S = rgb2gray(imread('peppers.png'));
    R = S;
    [row, col] = size(S);
    
    S = imnoise(S, 'speckle', 0.02);
    
    for i = 1:row-4
       for j = 1:col-4 
           
           N = S(i:i+4, j:j+4);
           t = avg(N(:));
           %t = filter2(fspecial('average',3),S)/255;
          
           
           R(i,j) = t;
           
       end
    end

    figure; imshow(S);
    figure; imshow(R);
    figure; imshow(abs(R - S), [0 1])
    
end