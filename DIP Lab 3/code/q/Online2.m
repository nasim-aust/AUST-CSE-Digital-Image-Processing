clear;
I = imread('coins.jpg');
% because it's an color image.
I = rgb2gray(I);

[rows,col] = size(I);

target_pdf = zeros(256,1);
histo_bin = zeros(256,1);
x = 1:256;

target_pdf(1:32) = 1/640;
target_pdf(33:64) = 1/320;
target_pdf(65:96) = 3/640;
target_pdf(97:160) = 1/160;
target_pdf(161:192) = 3/640;
target_pdf(193:224) = 1/320;
target_pdf(225:256) = 1/640;

for i=1:rows
    for j=1:col
        histo_bin(I(i,j)+1) = histo_bin(I(i,j)+1) + 1;
    end
end

% For verification
% disp(sum(histo_bin(:))); Image area

% plot(x,histo_bin,'.-');

pdf = histo_bin(:) / (rows * col);

% plot(x,pdf,'.-');
% plot(x,target_pdf,'.-');

% For verification
% disp(sum(pdf(:))); 1 

cdf = zeros(256,1);
target_cdf = zeros(256,1);

target_cdf(1,1) = target_pdf(1,1); 
cdf(1,1) = pdf(1,1);

for i = 2:256
    target_cdf(i,1) = target_cdf(i-1,1) + target_pdf(i,1);
end

for i = 2:256
     cdf(i,1) = cdf(i-1,1) + pdf(i,1);
end

% plot(x,cdf,'.-');
% plot(x,target_cdf,'.-');
% For verification
% disp(cdf(256,1)); % 1
disp(target_cdf(256,1));

target_roundoff = ceil(255 * target_cdf);
round_off = ceil(255 * cdf);
target_map = zeros(256,1);

for i=1:256
    for j=1:256
        if target_roundoff(j,1) >= round_off(i,1)
            target_map(i,1) = j;
            break;
        end
    end
end

K = uint8(zeros(rows,col));

for i=1:rows
    for j=1:col
        K(i,j) = target_map(I(i,j)+1,1);
    end
end

imwrite(K,'output.jpg');

after_histobin = zeros(256,1);

for i=1:rows
    for j=1:col
        after_histobin(K(i,j)+1) = after_histobin(K(i,j)+1) + 1;
    end
end

after_pdf = after_histobin(:) / (rows * col);

% plot(x,after_pdf);

after_cdf = zeros(256,1);

after_cdf(1,1) = after_pdf(1,1);

for i = 2:256
     after_cdf(i,1) = after_cdf(i-1,1) + after_pdf(i,1);
end

disp(after_cdf(256,1));

bar(x,after_cdf);