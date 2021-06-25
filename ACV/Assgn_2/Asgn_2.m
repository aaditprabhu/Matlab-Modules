close all;
clear all;
clc;


A = [
    3,5,6,4,1;
    1,4,5,1,1;
    4,8,2,4,3;
    3,0,5,2,1;
    4,6,5,1,2; ]
mean = 1/9 * [1 1 1; 1 1 1; 1 1 1;]
A2=padarray(A,[1 1],0);


% Image after padding
disp(A2);


% Average filter (Mean)
Y = imfilter(A2, mean);
disp(Y);


% Median Filter
B=medfilt2(A2);
disp("Median");
disp(B);


% Laplacian Filter
lap=[
    0,1,0;
    1,-4,1;
    0,1,0;]
LapFilter=imfilter(A,lap);
disp("Laplacian Filter");
disp(LapFilter);


% Low Pass Filter
L=[
    1,2,1;
    2,4,2;
    1,2,1;]
low=(L/16);
lowpass=imfilter(A,low);
disp("LowPass filter");
disp(lowpass);


% Gradient magnitude and Gradient orientation
Gx = [1 +2 +1; 0 0 0; -1 -2 -1];
Gy = Gx';
Hx = conv2(A, Gx, 'same');
Hy = conv2(A, Gy, 'same');
disp(Hx);
disp(Hy);
[Gmag,Gdir] = imgradient(A);
disp("Gradient Magnitude");
disp(Gmag);
disp("Gradient Orientation");
disp(Gdir);


% Un-sharp Masking
un=1/16*[1 2 1;
    2 4 2;
    1 2 1;]
lowpass=imfilter(A,un);%lowpass for every pixel
[x,y]=size(A);

for i=0:x-1
    for j=0:y-1
        highpass=A-lowpass; %highpass value obtained
    end
end
disp("HighPass:");
disp(highpass);

for i=0:x-1
    for j=0:y-1
        Sharpen=A+highpass;
    end
end
disp("Sharpen:");
disp(Sharpen);


% Intensity Histogram 
histogram(A);


% Correlation
M=[1,2,1; 0,3,2; 2,1,0;]
correlation = imfilter(A,M);
disp("Correlation");
disp(correlation);


% Convolution
U=conv2(A,M);
disp("Convolution");
disp(U);