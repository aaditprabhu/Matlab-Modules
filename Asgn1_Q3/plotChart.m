function b = plotChart(data, methods, legends, chart_title)
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
b = plot(data);
legend(legends);
set(gca,'XTickLabel', methods);
title(chart_title);
h = gca;
h.XTickLabelRotation = 60;
end

