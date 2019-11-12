
function erotedImage  = erotion( I )

[rows, columns] = size(I);
erotedImage = zeros(size(I), class(I));

se = logical([0 0 0 1 0 0 0; 0 0 1 1 1 0 0; 0 1 1 1 1 1 0;
    1 1 1 1 1 1 1; 0 1 1 1 1 1 0; 0 0 1 1 1 0 0; 0 0 0 1 0 0 0]);
[p, q]=size(se);
halfHeight = floor(p/2);
halfWidth = floor(q/2);

for col = (halfWidth + 1) : (columns - halfWidth)
  for row = (halfHeight + 1) : (rows - halfHeight)
    row1 = row-halfHeight;
    row2 = row+halfHeight;
    col1 = col-halfWidth;
    col2 = col+halfWidth;
    thisNeighborhood = I(row1:row2, col1:col2);
    pixelsInSE = thisNeighborhood(se);
    erotedImage(row, col) = min(pixelsInSE);
  end
end

end

