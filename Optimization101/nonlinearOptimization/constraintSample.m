%V = @(x) x(1)*x(2)*x(3);

%S = @(x) 2*(x(1)*x(2) + x(1)*x(3) + x(2)*x(3));



clc;
clear;
close all;

[x, fval] = fmincon(@Volume, [1 1 1], [], [], [], [], [0 0 0],[], @mycons);



function V = Volume(x)
    V = x(1)*x(2)*x(3);

end


function S = Surface(x)

    S = 2*(x(1)*x(2) + x(1)*x(3) + x(2)*x(3));
end

function [c, ceq] = mycons(x)
    c = Surface(x) - 150;
    ceq = [];

end
