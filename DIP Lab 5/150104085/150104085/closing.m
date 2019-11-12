
function close  = closing( I )

[rows, columns] = size(I);

close = uint8(zeros(size(I), class(I)));
K = im2bw(close);

se = logical([0 0 0 1 0 0 0; 0 0 1 1 1 0 0; 0 1 1 1 1 1 0;
    1 1 1 1 1 1 1; 0 1 1 1 1 1 0; 0 0 1 1 1 0 0; 0 0 0 1 0 0 0]);
[p, q]=size(se);

dialatedImage = dialation(I);
close1 = erotion(dialatedImage);
%erotedImage = erotion(I);
%c = se + dialatedImage;
%d = c - I;
close = close1 - I;

end