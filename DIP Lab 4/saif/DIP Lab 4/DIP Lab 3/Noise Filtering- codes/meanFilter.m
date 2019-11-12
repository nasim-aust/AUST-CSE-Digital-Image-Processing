function meanFilter()
    S = imread('coins.png');
    R = S;
    [row, col] = size(S);
    
    S = imnoise(S, 'salt & pepper', 0.02);
    
    for i = 1:row-4
       for j = 1:col-4 
           
           N = S(i:i+4, j:j+4);
           t = mean(N(:));
           
           R(i,j) = t;
           
       end
    end

    figure; imshow(S);
    figure; imshow(R);
    figure; imshow(abs(R - S), [0 1])
    
end