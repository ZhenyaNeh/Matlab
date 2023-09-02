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
I_Trapezoid_10_1 = height1 * sum1
sum1 = 0.5*(f1(limit_a) + f1(limit_b));
for i = 1 : divide_One_Hundred-1
    sum1 = sum1 + f1(limit_a + i*height2);
end
I_Trapezoid_100_1 = height2 * sum1

sum2 = 0.5*(f2(limit_a) + f2(limit_b));
for i = 1 : divide_Ten-1
    sum2 = sum2 + f2(limit_a + i*height1);
end
I_Trapezoid_10_2 = height1 * sum2
sum2 = 0.5*(f2(limit_a) + f2(limit_b));
for i = 1 : divide_One_Hundred-1
    sum2 = sum2 + f2(limit_a + i*height2);
end
I_Trapezoid_100_2 = height2 * sum2
result = integral(f1, limit_a, limit_b);
delta_rel_Trapezoid = abs((result - I_Trapezoid_10_1) / result);
delta_abs_Trapezoid = abs(result - I_Trapezoid_10_1);


sum1 = f1(limit_a) + f1(limit_b);
for i = 1 : 2 : divide_Ten-1
    sum1 = sum1 + 4*f1(limit_a + i*height1);
end
for i = 2 : 2 : divide_Ten-2
    sum1 = sum1 + 2*f1(limit_a + i*height1);
end
I_Simpson_10_1 = height1/3 * sum1
sum1 = f1(limit_a) + f1(limit_b);
for i = 1 : 2 : divide_One_Hundred-1
    sum1 = sum1 + 4*f1(limit_a + i*height2);
end
for i = 2 : 2 : divide_One_Hundred-2
    sum1 = sum1 + 2*f1(limit_a + i*height2);
end
I_Simpson_100_1 = height2/3 * sum1

sum2 = f2(limit_a) + f2(limit_b);
for i = 1 : 2 : divide_Ten-1
    sum2 = sum2 + 4*f2(limit_a + i*height1);
end
for i = 2 : 2 : divide_Ten-2
    sum2 = sum2 + 2*f2(limit_a + i*height1);
end
I_Simpson_10_2 = height1/3 * sum2
sum2 = f2(limit_a) + f2(limit_b);
for i = 1 : 2 : divide_One_Hundred-1
    sum2 = sum2 + 4*f2(limit_a + i*height2);
end
for i = 2 : 2 : divide_One_Hundred-2
    sum2 = sum2 + 2*f2(limit_a + i*height2);
end
I_Simpson_100_2 = height2/3 * sum2
result = integral(f1, limit_a, limit_b);
delta_rel_Simpson = abs((result - I_Simpson_10_1) / result);
delta_abs_Simpson = abs(result - I_Simpson_10_1);


sum1 = 0;
for i = 1: divide_Ten
    sum1 = sum1 + height1*f1(limit_a + i*height1-height1/2);
end
I_Rectangle_10_1 = sum1
sum1 = 0;
for i = 1 : divide_One_Hundred
    sum1 = sum1 + height2*f1(limit_a + i*height2- height2/2);
end
I_Rectangle_100_1 = sum1

sum2 = 0;
for i = 1: divide_Ten
    sum2 = sum2 + height1*f2(limit_a + i*height1- height1/2);
end
I_Rectangle_10_2 = sum2
sum2 = 0;
for i = 1 : divide_One_Hundred
    sum2 = sum2 + height2*f2(limit_a + i*height2 - height2/2 );
end
I_Rectangle_100_2 = sum2
result = integral(f1, limit_a, limit_b);
delta_rel_Rectangle = abs((result - I_Rectangle_10_1) / result);
delta_abs_Rectangle = abs(result - I_Rectangle_10_1);