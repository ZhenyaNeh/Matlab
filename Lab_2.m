x = [3.3, 4, 5.1, 7, 11, 13, 13, 14, 15];
y = [1, 2.2, 5, 6.7, 9, 11, 12, 13, 13];

plot(x, y);

hold on
n = size(x, 2)

A = [n, sum(x); sum(x) sum(x.^2)]

b =[sum(y); sum(x.*y)] 

a = inv(A)*b

phi = @(x)a(1)+a(2).*x

plot(x,phi(x));

text(2.5, 3, 'После')
text(4, 1, 'До')

hold off