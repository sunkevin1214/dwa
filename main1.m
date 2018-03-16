clc;clear;
load all_solutions.mat

[m, n] = size(all_solutions);
objs = zeros(m, 2);
for i = 1:m
    f1 = sum(all_solutions(i,:).^2)/n;
    f2 = sum((all_solutions(i,:)-2.0).^2)/n;
    objs(i,:) = [f1, f2];
end
%F = assign_front(objs);