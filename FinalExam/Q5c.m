close all; 
clear all; 
clc;

Dataset = [
    1 0.7 0.1 0.3 0.2 0.85;
    0.7 1 0.55 0.6 0.5 0.4;
    0.1 0.55 1 0.65 0.2 0.1;
    0.3 0.6 0.65 1 0.35 0.25;
    0.2 0.5 0.2 0.35 1 0.15;
    0.85 0.4 0.1 0.25 0.15 1];
 
Pd = pdist(Dataset);
Z = linkage(Pd,'weighted');
dendrogram(Z);