function [ imout ] = gammatransform( image_double )
    figure ;
    imshow( image_double ) ;
    [ r c ]= size (image_double ) ;
    cc= input ( ' Enter the value for c==>' ) ;
    ep= input ( 'Enter the value for gamma==>') ;
    for i =1: r
        for j =1: c
            imout ( i , j ) =cc*power(image_double ( i , j ) , ep ) ;
     end
    end
end

