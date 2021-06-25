clear all;
close all;
clc;

load covid19.mat;
Top10_T1 = head(covid19,10);

% Bar Graph 1
figure(1)
subplot(3,3,1)
data = [Top10_T1.TotalCases'; Top10_T1.TotalRecovered']';
methods = [Top10_T1.Country];
chart_title = 'Total Cases and Total Recovered of some Countries.';
legends = {'Cases', 'Recovered'};
createBarChart(data, methods, legends, chart_title);

% Bar Graph 2
subplot(3,3,2)
data1 = [Top10_T1.TotalTests'; Top10_T1.TotalCases']';
methods1 = [Top10_T1.Country];
chart_title1 = 'Total Tests and Total Cases in some Countries.';
legends1 = {'Tests', 'Cases'};
createBarChart(data1,methods1,legends1,chart_title1);

%bar graph 3
subplot(3,3,3)
data2 = [Top10_T1.TotCases1Mpopulation'; Top10_T1.Tests1Mpopulation']';
methods2 = [Top10_T1.Country];
chart_title2 = 'Total Cases and Total Test per 1M Population in some Countries.';
legends2 = {'Cases1Mpopulation', 'Tests1Mpopulation'};
createBarChart(data2,methods2,legends2,chart_title2);

%plot Chart 
subplot(3,3,4)
data3 = [Top10_T1.TotCases1Mpopulation'; Top10_T1.Tests1Mpopulation']';
methods3 = [Top10_T1.Country];
chart_title3 = 'Total Cases and Total Test per 1M Population in some Countries.';
legends3 = {'Cases1Mpopulation', 'Tests1Mpopulation'};
plotChart(data3,methods3,legends3,chart_title3);

%plot Chart Cases and recovered 
subplot(3,3,5)
data4 = [Top10_T1.TotalCases'; Top10_T1.TotalRecovered']';
methods4 = [Top10_T1.Country];
chart_title4 = 'Total Cases and Total Recovered';
legends4 = {'Cases', 'Recovered'};
plotChart(data4,methods4,legends4,chart_title4);

