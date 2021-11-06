% create a scatter plot with x1 on the x-axis, y1 on the y-axis, and the size of the markers determined by y1.

rng(100);
x1 = (1:13) + rand(1,13);
y1 = 10+(x1-14).^2 + 5*rand(1,13);

scatter(x1,y1,y1)
% Change the x-axis limits to go from 0.5 to 8.
xlim([0.5 8])
grid on
grid('minor')
% Change the x-axis limits of the scatter plot, such that they are "square".
% Using the axis command lets you change the style of the axes.
axis('square')
  


  
  
