
function open  = opening( I )

[rows, columns] = size(I);
open = uint8(zeros(size(I), class(I)));
K = im2bw(open);

se = logical([0 0 0 1 0 0 0; 0 0 1 1 1 0 0; 0 1 1 1 1 1 0;
    1 1 1 1 1 1 1; 0 1 1 1 1 1 0; 0 0 1 1 1 0 0; 0 0 0 1 0 0 0]);
[p, q]=size(se);
%halfHeight = floor(p/2);
%halfWidth = floor(q/2);


erotedImage = erotion(I);
c = se - erotedImage;
d = c + I;

e = K - d;

end