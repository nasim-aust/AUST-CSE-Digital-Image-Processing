
function hitMissImage  = hitMiss( I )

[rows, columns] = size(I);
hitMissImage = zeros(size(I), class(I));

se = logical([0 0 0 1 0 0 0; 0 0 1 1 1 0 0; 0 1 1 1 1 1 0;
    1 1 1 1 1 1 1; 0 1 1 1 1 1 0; 0 0 1 1 1 0 0; 0 0 0 1 0 0 0]);
[p, q]=size(se);

erotedImage = erotion(I);
c=imcomplement(erotedImage);

d = erotion(c);
e = bitand(erotedImage, d);

end