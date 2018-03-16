clc;clear;
% func_name = 'func1';
% x_dim = 20;
% l_bound = zeros(x_dim, 1);
% u_bound = 2*ones(x_dim, 1);
func_name = 'func2';
x_dim = 30;
l_bound = zeros(x_dim, 1);
u_bound = ones(x_dim, 1);
[xmin, all_solutions] = purecmaes(func_name, x_dim, l_bound, u_bound);
objs = zeros(size(all_solutions, 1), 2);
for i = 1:size(all_solutions, 1)
    objs(i,:) = feval(func_name, all_solutions(i,:));
end
fronts = ENS_BS(objs);
optimal_solutions = objs(fronts{1}, :);
scatter(optimal_solutions(:,1), optimal_solutions(:,2));