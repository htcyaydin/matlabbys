f = @(x) x^3 -5*x + 1

ezplot(f)
grid on
fminbnd(f, -1,5)

