close all;
clear aall;
clc;

img = imread('owl.png');
figure,imshow(img);

gaussian_kernel = fspecial('gaussian', [5 5], 5);
img_gaussian = imfilter(img,gaussian_kernel, 'replicate');
figure,imshow(img_gaussian);
figure,imshow(gaussian_kernel, []);
