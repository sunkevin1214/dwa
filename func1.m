function y = func1(x)
    f1 = sum(x.^2)/numel(x);
    f2 = sum((x-2.0).^2)/numel(x);
    y = [f1 f2];
end

