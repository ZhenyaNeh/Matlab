limit_a = 1;
limit_b = 3;

divide_Ten = 10;
divide_One_Hundred = 100;

height1 = (limit_b - limit_a)/divide_Ten;
height2 = (limit_b - limit_a)/divide_One_Hundred;

f1 = @(x)sin(x) .* cos(2 .* x);
f2 = @(x)cos(x) ./(x.^2);

sum1 = 0.5*(f1(limit_a) + f1(limit_b));
for i = 1 : divide_Ten-1
    sum1 = sum1 + f1(limit_a + i*height1);
end
I10_1 = height1 * sum1

sum1 = 0.5*(f1(limit_a) + f1(limit_b));
for i = 1 : divide_One_Hundred-1
    sum1 = sum1 + f1(limit_a + i*height2);
end
I100_1 = height2 * sum1



sum2 = 0.5*(f2(limit_a) + f2(limit_b));
for i = 1 : divide_Ten-1
    sum2 = sum2 + f2(limit_a + i*height1);
end
I10_2 = height1 * sum2

sum2 = 0.5*(f2(limit_a) + f2(limit_b));
for i = 1 : divide_One_Hundred-1
    sum2 = sum2 + f2(limit_a + i*height2);
end
I100_2 = height2 * sum2

result = integral(f1, limit_a, limit_b);
delta_rel = abs((result - I10_1) / result);
delta_abs = abs(result - I10_1);