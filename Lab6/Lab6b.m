close all;
clear all;
clc;

img = imread('21.jpg');
figure,imshow(img);

% Read Fixation data
load('fixations.mat');
figure,imshow(fixations,[]);

% Apply Gaussian Filter on Fixation data
gaussian_kernel = fspecial('gaussian', [100 100], 20);
density = imfilter(fixations, gaussian_kernel, 'replicate');
figure,imshow(density, []);

% Overlay the Density map on the image
omask = heatmap_overlay(img,density, 'jet');
figure,imshow(omask);

% Adding ColorMap
colormap(jet);
colorbar;