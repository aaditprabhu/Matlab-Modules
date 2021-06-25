close all;
clear all;
clc;
% data = {'Clothing', 'Dresses', 200, 'Jackets', 4600, 'Coats', 1300, 'Jeans', 1700; 
%     'Shoes', 'Boots', 1800, 'Flats', 900, 'Heels', 2200, 'Sandals', 2700, 'Sneakers', 1500;
%     'Accessories', 'Bags', 2500, 'Belts', 600, 'Sunglasses', 140, 'Hats', 1100, 'Socks', 800;
%     'Appliances', 'Coffee Makers', 140, 'Air Fryers', 300, 'Blenders', 450, 'Pressure Cookers', 700, 'Stand Mixer', 110};

data = {'Clothing', 7800; 'Shoes', 9100; 'Accessories', 5140; 'Appliances', 1700};

colors = (jet(9)+1)/2;
rectangles=treemap([data{:,2}]);
labels=data(:,1);
plotRectangles(rectangles,labels,colors);
outline(rectangles);