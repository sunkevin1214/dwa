function y = weight_func2(x, w)
    f = func2(x);
    y = sum(f.*w);
end