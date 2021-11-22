
% Define Rosenvbrack Function in 2 dim space

f = @(x) 100*(x(2)-x(1)^2)^2 + (1-x(1))^2


fminsearch(f, [0 0])


fminnunc(f, [0 0])

