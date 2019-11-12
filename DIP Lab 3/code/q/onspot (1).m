image =imread ('C:\Program Files\MATLAB\R2013a\toolbox\images\imdemos\coins.png') ;

image_double = im2double ( image ) ;
imout=gammatransform(image_double);

figure , imshow ( imout ) ;