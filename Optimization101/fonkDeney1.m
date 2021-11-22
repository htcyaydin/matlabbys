clear all
clc

f = @(x) ((100*x)^2)*(1-x)^2 - x

ezplot(f)
grid on

[x,fval] = fminbnd(f,-4,3)

fminbnd(f,-4,4)