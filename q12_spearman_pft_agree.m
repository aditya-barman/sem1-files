% NAME: ADITYA BARMAN
% ROLL: 002320601024
% PROBLEM 12. Spearman's Rank Correlation with Perfect agreement


clc, clearvars, close all

math_x = [43 77 64 96 48 35 86 71];
stat_y = [41 68 50 82 49 36 79 65];
n = length(math_x);

R_x = zeros(1, n);
R_y = zeros(1, n);

for i = 1:n
    [valx, idx] = max(math_x);
    math_x(idx) = -Inf;
    R_x(idx) = i;
    
    [valy, idx] = max(stat_y);
    stat_y(idx) = -Inf;
    R_y(idx) = i;
end

d_sq = (R_x - R_y) .^ 2;
d_sq_sum = sum(d_sq);

sp_num = 6 * d_sq_sum;
sp_denom = n * ((n ^ 2) - 1);

sp = 1 - (sp_num / sp_denom);

fprintf('The Spearman Rank Correlation is %.4f\n', sp);



% ================ OUTPUT ================

% The Spearman Rank Correlation is 1.0000

% ========================================
