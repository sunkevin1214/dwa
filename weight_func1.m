function y = weight_func1(x, w)
    f = func1(x);
    y = sum(f.*w);
end