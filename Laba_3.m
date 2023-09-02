f = @(x)x.^3 + 5*x - 1;

x=0:0.01:1;

plot(x, f(x));

a=0;
b=1;

eps= 0.01;

while abs(b-a)>eps
    x0=(a+b)/2
    if(f(a)*f((a+b)/2) < 0)
        b=(a+b)/2;
    elseif(f(b)* f((a+b)/2) < 0)
        a=(a+b)/2;
    else
        a=b;
    end
end


f = @(x)x.^3 + 5*x - 1;

x=0:0.01:1;

plot(x, f(x));


df = @(x) 3*x.^2 + 5;
x0 = 1;

eps = 0.001;

for i = 1:100
    fk = f(x0);
    dfk = df(x0);
    x1 = x0 - fk/dfk;
    if abs(x1-x0) < eps
        break;
    end
    x0 = x1
end


        