clc;clear;
load all_solutions.mat

[m, n] = size(all_solutions);
objs = zeros(m, 2);
for i = 1:m
    f1 = all_solutions(i,1);
    x1 = all_solutions(i,2:end);
    g=1.0+sum(x1.^2)*9/(n-1);
    f2 = g*(1.0-(f1/g)^2);
    objs(i,:) = [f1, f2];
end
[f1, f2, f3] = ENS_BS(objs);