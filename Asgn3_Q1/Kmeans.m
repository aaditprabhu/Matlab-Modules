close all;
clear all;
clc;

%prepared data
data = zeros(64*64);

for i=01:82
    for j=01:100
      if isfile(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(j,'%02d') '.jpg'])
           im=imread(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(j,'%02d') '.jpg']);
           im=im2double(im);
           im=imresize(im,[64,64]);
           data(:,j)=im(:);
      end
    end
end
[PC,V] = pca(data);
data_pca = data'*PC(:,1:100);

[idx,C] = kmeans(data_pca,8,'dist','sqeuclidean');
[idx1,C1] = kmeans(data_pca,12,'dist','sqeuclidean');

i=1;
while(i<=8)
    cluster=find(idx==i);
    len=length(cluster);
    for x=1:len
        for k=01:100
            if isfile(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg'])
                im = imread(['./age_data/data_faces/' num2str(i,'%03d') 'A' num2str(k,'%02d') '.jpg']);
                im = im2double(im);
                im=imresize(im,[64 64]);
            end
        end
    end
    figure(1);
    subplot(1,8,i);
    img_reshape=reshape(PC(:,1:100)*C(i,:)',[64 64]);
    avg=sum(img_reshape,3);
    imshow(avg,[]);
    i=i+1;
end

i2=1;
while(i2<=12)
    cluster=find(idx1==i2);
    len=length(cluster);
    for x=1:len
        for k=01:100
            if isfile(['./age_data/data_faces/' num2str(i2,'%03d') 'A' num2str(k,'%02d') '.jpg'])
                im = imread(['./age_data/data_faces/' num2str(i2,'%03d') 'A' num2str(k,'%02d') '.jpg']);
                im = im2double(im);
                im=imresize(im,[64 64]);
            end
        end
    end
    figure(2);
    subplot(1,12,i2);
    img_reshape=reshape(PC(:,1:100)*C1(i2,:)',[64 64]);
    avg=sum(img_reshape,3);
    imshow(avg,[]);
    i2=i2+1;
end