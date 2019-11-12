%x = 1:50;
%y = find2x(x)
%disp(y)

%I = imread()
function K  = Filtering( I )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
[rows,col] = size(I);
K = uint8(zeros(rows,col));

kernel = ones(3,3);
kernel = kernel * (1/9);


%I = imread(peepers.png)

for i=1:rows
    if i + 2 <= rows
        for j=1:col
            if j + 2 <= col
                M = I(i:i+2,j:j+2);
                %M = I(i:i+1, j:j+1)
                C = double(M) .* kernel;
                I(i+1,j+1) = sum(C(:));
            end        
        end
    end
end

for i=1:rows
    for j=1:col
        K(i,j) = I(i,j);
    end
end


end

