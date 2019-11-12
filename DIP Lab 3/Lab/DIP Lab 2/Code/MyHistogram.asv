
function [counts, grayLevels] = MyHistogram(grayImage)
[rows, columns] = size(grayImage);
counts = zeros(1, 256);
for col = 1 : columns
  for row = 1 : rows
    % Get the gray level.
    grayLevel = grayImage(row, col);
    % Add 1 because graylevel zero goes into index 1 and so on.
    counts(grayLevel) = counts(grayLevel) + 1;
  end
end
% Plot the histogram.
grayLevels = 0 : 255;
bar(grayLevels, counts, 'BarWidth', 1, 'FaceColor', 'b');
xlabel('Gray Level', 'FontSize', 20);
ylabel('Pixel Count', 'FontSize', 20);
title('Histogram', 'FontSize', 20);
grid on;
end