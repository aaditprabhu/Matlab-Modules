close all;
clear all;
clc;

load fisheriris;
D = pdist(meas);
Z = linkage(D);
figure, dendrogram(Z);
Z2 = linkage(meas,'single',{'minkowski',2});
figure, dendrogram(Z2);