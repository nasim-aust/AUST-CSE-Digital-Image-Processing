I = imread('C:\Program Files\MATLAB\R2013a\toolbox\images\imdemos\coins.png');
imshow(I);
freq_array = zeros(1,256);
cum_freq_array = zeros(1,256);
L_mult_array = zeros(1,256);
[row,col] = size(I);

for i=1:row
    for j=1:col
    intensity = I(i,j)+1;
    freq_array(1,(intensity)) = freq_array(1,(intensity))+1;
    end
end

sum = 0;

for i=1:256
    %freq_array(1,i) = freq_array(1,i)/(row*col);
    if i>0 && i<32 
        freq_array(1,i)= 0.0016
    end
    if i>31 && i<64
        freq_array(1,i)= 0.0031
    end
    if i>63 && i<96 
        freq_array(1,i)= 0.0047
    end
    
    if i>95 && i<160 
        freq_array(1,i)= 0.0125
    end
    if i>159 && i<192 
        freq_array(1,i)= 0.0047
    end
    if i>191 && i<224
        freq_array(1,i)= 0.0047
    end
    if i>223 && i<256
        freq_array(1,i)= 0.0016
    end
    
    sum = sum + freq_array(1,i);
    cum_freq_array(1,i) = sum;
end

X = 0:255;

figure;
bar(X,cum_freq_array,'r');

L_mult_array = uint8(round(256.*cum_freq_array));
index_array = uint8(zeros(1,256));

for i=1:256
    index_array(i) = L_mult_array(i);
    
end

modified_image = uint8(zeros(row,col));

for i=1:row
    for j=1:col
    modified_image(i,j)= index_array(I(i,j))-1;
    end
end

figure;
imshow(modified_image);

freq_array = zeros(1,256);
cum_freq_array = zeros(1,256);

for i=1:row
    for j=1:col
    intensity = modified_image(i,j)+1;
    freq_array(1,(intensity)) = freq_array(1,(intensity))+1;
    end
end

sum = 0;

for i=1:256
    freq_array(1,i) = freq_array(1,i)/(row*col);
    sum = sum + freq_array(1,i);
    cum_freq_array(1,i) = sum;
end

X = 0:255;

figure;
bar(X,cum_freq_array,'b');
