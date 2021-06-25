close all; 
clear all; 
clc;

img=imread('C:\program Files\MATLAB\R2020a\toolbox\images\imdata\cameraman.tif');
subplot(3,5,1),imshow(img);
title('Original Image');

% Average Filter to Whole Image 
h=fspecial('average',3);
A=imfilter(img,h,'replicate');
subplot(3,5,2),imshow(A);
title('Average Filter');

% Median Filter to Whole Image
B=medfilt2(img);
subplot(3,5,3),imshow(B);
title('Median Filter');

% Lapalacian Filter 
lap=[0,1,0; 1,-4,1; 0,1,0;];
LapFilter=imfilter(img,lap);
subplot(3,5,4),imshow(LapFilter);
title('Laplacian Filter');

% Low-Pass Filter 
L=[1,2,1; 2,4,2; 1,2,1;];
low=(L/16);
lowpass=imfilter(img,low);
subplot(3,5,5),imshow(lowpass,[]);
title('Low Pass Filter');

% Gradient Magnitude & Gradient Orientation
Gx=[1 +2 +1 ;
    0 0 0;
    -1 -2 -1;];
Gy=Gx';
Hx=conv2(img,Gx,'same');
Hy=conv2(img,Gy,'same');

subplot(3,5,6),imshow(Hx);
title('Gradient Orientation Along x-axis');
subplot(3,5,7),imshow(Hy);
title('Gradient Orientation Along y-axis');

[Gmag,Gdir]=imgradient(img);
subplot(3,5,8),imshow(Gmag,[]);
title('Gradient Magnitude Along x-axis');
subplot(3,5,9),imshow(Gdir,[]);
title('Gradient Magnitude Along y-axis');

% Unsharp-masking
H=fspecial('unsharp');
sharpened=imfilter(img,H,'replicate');
subplot(3,5,10),imshow(sharpened); 
title('Sharpened Image');

% Mask
M=[1 2 1; 0 3 2; 2 1 0;];

% Correlation
correlation=xcorr2(img,M);
subplot(3,5,11),imshow(correlation,[]);
title('Correlation');

% Convolution
U=conv2(img,M);
subplot(3,5,12),imshow(U,[]);
title('Convolution');

% Histogram
subplot(3,5,13),histogram(img);
title('Histogram');