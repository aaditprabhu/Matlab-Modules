close all;
clear all;
clc;
 
fileName ='lenses.data';
[dat,limit] = importdata(fileName); %Reading the data
 
c = dat(:,2); %selecting the colomn 
a = dat(:,3);
p = dat(:,4);
as = dat(:,5);
tpr  = dat(:,6);
 
op1 = entropy([c;a]);
op2 = entropy([c;p]);
op3 = entropy([c;as]);
op4 = entropy([c;tpr]);
 
disp(op1);
disp(op2);
disp(op3);
disp(op4);