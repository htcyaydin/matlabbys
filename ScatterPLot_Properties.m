rng(0)
x = (1:13) + rand(1,13);
y = 10+(x-14).^2 + 5*rand(1,13);
% Task1 
% When using the scatter function, you can scale the size of the markers, by supplying it as the third optional input which must be either a scalar or the same length as the input values.
% scatter(x,y,scaledValue)
% TASK
% Modify the scatter command to create a scatter plot with the same data on the x and y axis, but with markers with area specified by the vector [25 50 75 100].
scatter([4 5 6 7],[9 11 13 15], [25 50 75 100]);
%--------------------------------------
Plot the scatter plot of the variables x and y with markers whose size scale as specified in the vector 10*x.
scatter(x,y, 10*x)
%Modify the command from the previous task to create the scatter plot with red square markers.
scatter(x,y, 10*x, 'rs')
%--------------------------------------
%Modify the code to create a scatter plot with filled markers.
scatter(x,y, 10*x, 'rs','filled')
%Modify the code to create a scatter plot with partially transparent markers.
scatter(x,y, 10*x, 'rs','filled', ...
    'MarkerFaceAlpha', 0.2)
