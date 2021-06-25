close all;
clear all;
clc;

Subcategories = {'Clothing', 'Dresses', 200;
    'Clothing', 'Jackets', 4600;
    'Clothing', 'Coats', 1300;
    'Clothing', 'Jeans', 1700;
    'Shoes', 'Boots', 1800;
    'Shoes', 'Flats', 900;
    'Shoes', 'Heels', 2200;
    'Shoes', 'Sandals', 2700;
    'Shoes', 'Sneakers', 1500;
    'Accessories', 'Bags', 2500;
    'Accessories', 'Belts', 600;
    'Accessories', 'Sunglasses', 140;
    'Accessories', 'Hats', 1100;
    'Accessories', 'Socks', 800;
    'Appliances', 'Coffee Makers', 140;
    'Appliances', 'Air Fryers', 300;
    'Appliances', 'Blenders', 450;
    'Appliances', 'Presure Cookers', 700;
    'Appliances', 'Stand Mixer', 110;
    'Toys', 'Action Figure', 400;
    'Toys', 'Arts & Crafts', 300;
    'Toys', 'Puzzles', 600;
    'Toys', 'Stuffed Animals', 1710;};

Categories = {'Clothing', 'Shoes', 'Accessories', 'Appliances', 'Toys'};
colors = (jet(9)+1)/2;
a = zeros(23,5);
for i = 1:5
    for j = 1:23
        if strcmp(Categories(i),Subcategories(j,1))==1
            a(j,i) = cell2mat(Subcategories(j,3));
        end
    end
end

level = sum(a);
r = treemap(level(:, [1,2,3,4,5]));

for k = 1:5
    colors__inner = (3 * repmat(rand(1,3),23,1) + rand(23,3))/5;
    rNew = treemap(a(:,k),r(3,k),r(4,k));
    rNew(1,:) = rNew(1,:) + r(1,k);
    rNew(2,:) = rNew(2,:) + r(2,k);
    plotRectangles(rNew,Subcategories(:,2),colors__inner,false);
    outline(rNew);
end

plotRectangles(r,Categories,colors,true);
outline(r);
title('DV Store');



