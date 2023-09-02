%Method Gaussa
A = [4, 2, 1, 2; 1, 4, 2, 1; 2, 6, 1, 3; 2, 5, 2, 2];
b = [6; 5; 8; 7];
Ab = [A, b];

n = size(A, 1);
for i = 1:n-1
    for j = i+1:n
        Ab(j,:) = Ab(j,:) - Ab(j,i)/Ab(i,i)*Ab(i,:);
    end
end

x = zeros(n,1);
x(n) = Ab(n,n+1)/Ab(n,n);
for i = n-1:-1:1
    x(i) = (Ab(i,n+1) - Ab(i,i+1:n)*x(i+1:n))/Ab(i,i);
end

disp(x)

%Inverse Matrix Method

A = [4, 2, 1, 2; 1, 4, 2, 1; 2, 6, 1, 3; 2, 5, 2, 2];
b = [6; 5; 8; 7];

if det(A) ~= 0
 x = inv(A) * b;
end

disp(x)