close all;
clear all;
clc;

%prepared data
data = zeros(64*64);
folder = './age_data/data_faces';
I = dir(fullfile(folder,'*.JPG'));
for k=1:numel(I)
    filename=fullfile(folder,I(k).name);
    im = imread(filename);
    im = im2double(im);
    im = imresize(im,[64,64]);
    data(:,k) = im(:);
end

[PC,V] = pca(data);
data_pca = data'*PC;

imtest = imread('./age_data/data_faces/004A21.JPG');
imtest = im2double(imtest);
imtest = imresize(imtest,[16,16]);
imtest = imtest(:)';

[idx,C] = kmeans(data_pca,6,'dist','cityblock');
ptsymb = {'bs','r^','md','go','c+','mo'};

figure,
for i = 1:6
    clust = find(idx==i);
    plot(data_pca(clust,1),data_pca(clust,2),ptsymb{i});
    hold on
end
hold off

cluster1 = find(idx==1);
cluster2 = find(idx==2);
cluster3 = find(idx==3);
cluster4 = find(idx==4);
cluster5 = find(idx==5);
cluster6 = find(idx==6);
cluster7 = find(idx==7);
cluster8 = find(idx==8);
for j = 1:8
    figure,
    if(j==1)
        for i=1:length(cluster1)
            for k=01:100
                if isfile(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg'])
                    im = imread(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg']);
                    im = im2double(im);
                    imshow(im);
                    subplot(35,35,i);
                end
            end
        end
        sum_image = zeros(256,256,3);
        for i=1:length(cluster1)
            for k=01:100
                if isfile(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg'])
                    im = imread(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg']);
                end
            end
            sum_image = sum_image + double(im);
            imshow(im);
        end
        sum_image = sum_image/(length(cluster1)*255);
        figure,imshow(sum_image,[]);
        
    elseif(j==2)
        for i=1:length(cluster2)
            for k=01:100
                if isfile(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg'])
                    im = imread(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg']);
                end
            end
            im = im2double(im);
            imshow(im);
            subplot(35,35,i);
        end
        sum_image = zeros(256,256,3);
        for i=1:length(cluster2)
            for k=01:100
                if isfile(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg'])
                    im = imread(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg']);
                end
            end
            sum_image = sum_image + double(im);
            imshow(im);
        end
        sum_image = sum_image/(length(cluster2)*255);
        figure,imshow(sum_image,[]);
        
    elseif(j==3)
        for i=1:length(cluster3)
            for k=01:100
                if isfile(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg'])
                    im = imread(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg']);
                end
            end
            im = im2double(im);
            imshow(im);
            subplot(35,35,i);
        end
        sum_image = zeros(256,256,3);
        for i=1:length(cluster3)
            for k=01:100
                if isfile(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg'])
                    im = imread(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg']);
                end
            end
            sum_image = sum_image + double(im);
            imshow(im);
        end
        sum_image = sum_image/(length(cluster3)*255);
        figure,imshow(sum_image,[]);
        
        
    elseif(j==4)
        for i=1:length(cluster4)
            for k=01:100
                if isfile(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg'])
                    im = imread(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg']);
                end
            end
            im = im2double(im);
            imshow(im);
            subplot(35,35,i);
        end
        sum_image = zeros(256,256,3);
        for i=1:length(cluster4)
            for k=01:100
                if isfile(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg'])
                    im = imread(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg']);
                end
            end
            sum_image = sum_image + double(im);
            imshow(im);
        end
        sum_image = sum_image/(length(cluster4)*255);
        figure,imshow(sum_image,[]);
        
    elseif(j==5)
        for i=1:length(cluster5)
            for k=01:100
                if isfile(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg'])
                    im = imread(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg']);
                end
            end
            im = im2double(im);
            imshow(im);
            subplot(35,35,i);
        end
        sum_image = zeros(256,256,3);
        for i=1:length(cluster5)
            for k=01:100
                if isfile(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg'])
                    im = imread(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg']);
                end
            end
            sum_image = sum_image + double(im);
            imshow(im);
        end
        sum_image = sum_image/(length(cluster5)*255);
        figure,imshow(sum_image,[]);
        
    elseif(j==6)
        for i=1:length(cluster6)
            for k=01:100
                if isfile(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg'])
                    im = imread(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg']);
                end
            end
            im = im2double(im);
            imshow(im);
            subplot(35,35,i);
        end
        sum_image = zeros(256,256,3);
        for i=1:length(cluster6)
            for k=01:100
                if isfile(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg'])
                    im = imread(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg']);
                end
            end
            sum_image = sum_image + double(im);
            imshow(im);
        end
        sum_image = sum_image/(length(cluster6)*255);
        figure,imshow(sum_image,[]);
        
    elseif(j==7)
        for i=1:length(cluster7)
            for k=01:100
                if isfile(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg'])
                    im = imread(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg']);
                end
            end
            im = im2double(im);
            imshow(im);
            subplot(35,35,i);
        end
        sum_image = zeros(256,256,3);
        for i=1:length(cluster7)
            for k=01:100
                if isfile(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg'])
                    im = imread(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg']);
                end
            end
            sum_image = sum_image + double(im);
            imshow(im);
        end
        sum_image = sum_image/(length(cluster7)*255);
        figure,imshow(sum_image,[]);
        
    elseif(j==8)
        for i=1:length(cluster8)
            for k=01:100
                if isfile(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg'])
                    im = imread(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg']);
                end
            end
            im = im2double(im);
            imshow(im);
            subplot(35,35,i);
        end
        sum_image = zeros(256,256,3);
        for i=1:length(cluster8)
            for k=01:100
                if isfile(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg'])
                    im = imread(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg']);
                end
            end
            sum_image = sum_image + double(im);
            imshow(im);
        end
        sum_image = sum_image/(length(cluster8)*255);
        figure,imshow(sum_image,[]);
        
    end
end
plot(C(:,1),C(:,2),'rx','MarkerSize',15,'LineWidth',3);


title('Kmeans');
grid on
