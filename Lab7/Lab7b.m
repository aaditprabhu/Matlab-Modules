close all;
clear all;
clc;
data = {'Data', 17;'Visualization', 6;'Graphic', 6;'Relationship', 2;'Images', 2;'Causality', 2;'Mapping', 2;'Analytical', 2;'Science', 2};
colors = (jet(9)+1)/2;
rectangles=treemap([data{:,2}]);
labels=data(:,1);
plotRectangles(rectangles,labels,colors);