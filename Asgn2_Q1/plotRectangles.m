function plotRectangles(rectangles,labels,colors,title)

if(nargin<2)
    labels=[];
end
if(nargin<3)
    colors=rand(size(rectangles,2,3)).^0.5;
end
% disp(size(rectangles,2));
for i =1:size(rectangles,2)
    r = rectangles(:,i);
    xPoints = [r(1), r(1), r(1) + r(3),r(1) + r(3)];
    yPoints = [r(2), r(2)+ r(4), r(2)+ r(4),r(2)];
    patch(xPoints,yPoints,colors(i,:),'EdgeColor','none');
    
    if(~isempty(labels))
        %checking if the text is a title
        if title == true
            text(r(1) + r(3)/2,r(2) + r(4)-0.012 , 1, labels{i}, 'VerticalAlignment','top','HorizontalAlignment','center','FontSize',10, 'Color', [1 0 0],'FontName', 'times','BackgroundColor', [1 1 0]);
        else
            text(r(1) + r(3)/2,r(2) + r(4)/2, 1, labels{i}, 'VerticalAlignment','top','HorizontalAlignment','center','FontSize',8.5);
        end
    end
    
    
    axis equal
    axis tight
    axis off
    
end
end
