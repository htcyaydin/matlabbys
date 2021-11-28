function [x,fval,exitflag,output,population,score] = gaAlgo(nvars,lb,ub,PopulationSize_Data)


options = optimoptions('ga');


options = optimoptions(options,'PopulationSize', PopulationSize_Data);
options = optimoptions(options,'MaxStallGenerations',25,'MaxGenerations',50)
options = optimoptions(options,'Display', 'iter');
options = optimoptions(options,'PlotFcn', { @gaplotbestf });
[x,fval,exitflag,output,population,score] = ...
ga(@hatice,nvars,[],[],[],[],lb,ub,[],[],options);

