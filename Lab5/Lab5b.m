close all;
clear all;
clc;

load fisheriris;
labels = {'Sepal Length', 'Sepal Width', 'Petal Length', 'Petal Width'};
h = parallelcoords(meas, 'Group', species, 'Label',labels);
h(1).LineWidth = 3;