limit_a = 1;
limit_b = 3;

divide_Ten = 10;
divide_One_Hundred = 100;

height1 = (limit_b - limit_a)/divide_Ten;
height2 = (limit_b - limit_a)/divide_One_Hundred;

f1 = @(x)sin(x) .* cos(2 .* x);
f2 = @(x)cos(x) ./(x.^2);

sum1 = 0;
for i = 1: divide_Ten
    sum1 = sum1 + height1*f1(limit_a + i*height1-height1/2);
end
I10_1 = sum1
sum1 = 0;
for i = 1 : divide_One_Hundred
    sum1 = sum1 + height2*f1(limit_a + i*height2- height2/2);
end
I100_1 = sum1


sum2 = 0;
for i = 1: divide_Ten
    sum2 = sum2 + height1*f2(limit_a + i*height1- height1/2);
end
I10_1 = sum2
sum2 = 0;
for i = 1 : divide_One_Hundred
    sum2 = sum2 + height2*f2(limit_a + i*height2 - height2/2 );
end
I100_1 = sum2

result = integral(f1, limit_a, limit_b);
delta_rel = abs((result - I10_1) / result);
delta_abs = abs(result - I10_1);