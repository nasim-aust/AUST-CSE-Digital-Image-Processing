I=imread('coins.png');
[row, col] = size(I);
K = zeros(1, 256);
for col = 1 : row
  for row = 1 : col
      Level = I(row, col);
      K(Level) = K(Level) + 1;
      
  end
end
Levels = 0 : 255;
bar(Levels, K, 'BarWidth', 1, 'FaceColor', 'r');
xlabel('Gray Level', 'FontSize', 20);
ylabel('Pixel Count', 'FontSize', 20);
title('Histogram', 'FontSize', 20);
grid on;