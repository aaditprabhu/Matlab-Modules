clear all; 
close all; 
clc;

% Data for the Graph
Temperature_C=[14.2 16.4 11.9 15.2 18.5 22.1 19.4 25.1 23.4 18.1 22.6 17.2];
Ice_Cream_Sales=[215 325 185 332 406 522 412 614 544 421 445 408];

% Data to Plot Bar Graph
data = [Temperature_C,Ice_Cream_Sales]';
methods = {Temperature_C};
chart_title = 'Ice Cream data';
legends = {'Temperature', 'Sales'};

createBarChart(data, methods, legends, chart_title);