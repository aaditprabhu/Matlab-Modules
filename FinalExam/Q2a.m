clear all; 
close all;
clc;
 
Table_Data = readtable('Q2a_Hairdata.csv');
 
read_hair = Table_Data.('Hair')';
read_height = Table_Data.('Height')';
read_weight = Table_Data.('Weight')';
read_lotion = Table_Data.('Lotion')';
read_result = Table_Data.('Result')';

JE1 = entropy([read_height;read_result]);
JE2 = entropy([read_weight;read_result]);
JE3 = entropy([read_hair;read_result]);
JE4 = entropy([read_lotion;read_result]);
 
disp(JE1);
disp(JE2);
disp(JE3);
disp(JE4);