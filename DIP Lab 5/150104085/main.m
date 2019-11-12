clear;
I = imread('Cosmos_original.jpg');
subplot(3,2,1);
imshow(I);
title('Original image');


erotedImage = erotion(I);
subplot(3,2,2);
imshow(erotedImage);
title('Erosion');

dialatedImage = dialation(I);
subplot(3,2,3);
imshow(dialatedImage);
title('Dialation');

hitMissImage = hitMiss(I);
subplot(3,2,4);
imshow(hitMissImage);
title('HitMiss');