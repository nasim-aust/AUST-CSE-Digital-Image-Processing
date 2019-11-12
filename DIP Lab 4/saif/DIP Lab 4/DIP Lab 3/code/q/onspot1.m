clear;
I = imread('cameraman.png');
[rows,col] = size(I);

histo_bin = zeros(255,1);
x = 1:255;

for i=1:rows
    for j=1:col
        histo_bin(I(i,j)) = histo_bin(I(i,j)) + 1;
    end
end

% For verification
% disp(sum(histo_bin(:))); Image area

% plot(x,histo_bin,'.-');

pdf = histo_bin(:) / (rows * col);

% plot(x,pdf,'.-');

% For verification
% disp(sum(pdf(:))); 1 

cdf = zeros(255,1);

cdf(1,1) = pdf(1,1);

for i = 2:255
     cdf(i,1) = cdf(i-1,1) + pdf(i,1);
end

% plot(x,cdf,'.-');

% For verification
% disp(cdf(255,1)); % 1

round_off = ceil(255 * cdf);

K = uint8(zeros(rows,col));

for i=1:rows
    for j=1:col
        K(i,j) = round_off(I(i,j),1);
    end
end

% figure;
% imshow(K);
% imwrite(K,'output.jpg');

after_histobin = zeros(255,1);

for i=1:rows
    for j=1:col
        after_histobin(K(i,j)) = after_histobin(K(i,j)) + 1;
    end
end

after_pdf = after_histobin(:) / (rows * col);

% plot(x,after_pdf);

after_cdf = zeros(255,1);

after_cdf(1,1) = after_pdf(1,1);

for i = 2:255
     after_cdf(i,1) = after_cdf(i-1,1) + after_pdf(i,1);
end

bar(x,after_cdf);
