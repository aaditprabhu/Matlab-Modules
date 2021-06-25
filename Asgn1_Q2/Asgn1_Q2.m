clear all;
close all;
clc;

% Provided by Prof in Data.m
Players =  {'Ciro Immobile ','Cristiano Ronaldo ','Danny Ings','Erling Haaland','Francesco Caputo','Harry Kane','Jamie Vardy','Jean-Pierre Nsame','Karim Benzema','Kylian Mbappe','Lionel Messi','Mohamed Salah','Pierre-Emerick Aubameyang','Raheem Sterling','Robert Lewandowski','Romelu Lukaku','Sadio Mane','Shon Weissman','Timo Werner','Wissam Ben Yedder'};        
Goals = [36,31,22,25,21,18,23,29,21,18,25,19,22,20,34,23,18,30,28,18];
Factors = [2,2,2,2,2,2,2,1.5,2,2,2,2,2,2,2,2,2,1.5,2,2];

% Assignment Work
Points = Goals.*Factors;
T1 = table(Players', Goals', Factors', Points');
T1_Sorted = sortrows(T1, {'Var4'}, {'ascend'});
Top10_T1 = tail(T1_Sorted,10);

% Data to Plot Bar Graph
data = [Top10_T1.Var2'; Top10_T1.Var4'; Top10_T1.Var3']';
methods = [Top10_T1.Var1];
chart_title = 'Top 10 Players in Ascending Order.';
legends = {'Goals', 'Points', 'Factor'};

createBarChart(data, methods, legends, chart_title);
