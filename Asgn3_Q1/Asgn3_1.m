close all;
clear all;
clc;

%% prepare data
data = zeros(64 * 64, 130);
folder = './age_data/test';
I = dir(fullfile(folder,'*.JPG'));
for k=1:numel(I)
    filename=fullfile(folder,I(k).name);
    im = imread(filename);
    im = im2double(im);
    im = imresize(im,[64,64]);
    data(:,k) = im(:);
end
% for i = 1:82
%     for j = 1:45
%         im = imread(['./test/00' num2str(i) 'A0' num2str(j) '.JPG']);
%         im = rgb2gray(im);
%         im = im2double(im);
%         im = imresize(im,[64,64]);
%         data(:,i) = im(:);
%     end
% end

%% perform PCA
[PC,V] = pca(data);
PC = PC(:,1:4096);

%% prepare test data
im_test = imread('./age_data/test/001A43b.JPG');
%im_test = rgb2gray(im_test);
im_test = im2double(im_test);
im_test = imresize(im_test,[64,64]);
im_test = im_test(:)';

%% perform PCA and recover the test image
im_pca = im_test*PC;
im_recover = im_pca*PC';
im_recover = reshape(im_recover,[64,64]);
im_test = reshape(im_test,[64,64]);
figure,subplot(1,2,1); imshow(im_test,[]);

%% plot before and after images
subplot(1,2,2); imshow(im_recover,[]);