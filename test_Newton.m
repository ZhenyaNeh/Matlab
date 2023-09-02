%-----------Newton_Method-----------

f = @(x)x.^3 + 4*x-2; % моя функция

x=0:0.01:1;

plot(x, f(x)); % вывод графика

df = @(x) 3*x.^2 + 4; % производная от f
x0 = 1; % начальное приближение

eps = 0.001; % точность

while abs(x1-x0) > eps
    x0 = x1
    fk = f(x0); % fk это функция f(x0)
    dfk = df(x0); % dfk это функция df(x0)
    x1 = x0 - fk/dfk; %следующее приближение корня  
end