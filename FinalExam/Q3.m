clc;
clear all;
close all;

folder = './trees/trees';
sum = zeros(300,400);
Img_dir = dir(fullfile(folder,'*.JPG'));
for k=1:numel(Img_dir)
    filename=fullfile(folder,Img_dir(k).name);
    im = imread(filename);
    im=imresize(im,[300,400]);
    sum=sum+double(im);
end
sum = sum/(20*255);
figure,imshow(sum,[]);