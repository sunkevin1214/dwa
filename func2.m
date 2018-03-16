function f = func2(x)
    f1 = x(1);
    n = numel(x);
    x1 = x(2:end);
    g=1.0+sum(x1.^2)*9/(n-1);
    f2 = g*(1.0-(f1/g)^2);
    f = [f1 f2];
end