close all;
clear all;
clc;

colors = (jet);

word = {'Data', 'Visualization', 'Graphics', 'Users', 'Communicate', 'Relationships', 'Information', 'Images', 'Comparisons'};
frequency = {17, 6, 6, 3, 3, 2, 2, 2, 2};

word_frequency = table(word', frequency');

data = (word_frequency.Var2);
labels = {word_frequency.Var1};

rectangles = treemap(data);

plotRectangles(rectangles,labels,colors);