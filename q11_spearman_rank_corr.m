% NAME: ADITYA BARMAN
% ROLL: 002320601024
% PROBLEM 11. Spearman's Rank Correlation


clc, clearvars, close all

math_x = [43 77 64 96 48 35 86 71];
phys_y = [36 68 49 79 50 41 82 65];
n = length(math_x);

R_x = [];
R_y = [];

d_sq = (R_x - R_y) .^ 2;
d_sq_sum = 0;

for i = 1:n
    d_sq_sum = d_sq_sum + d_sq(i);
end

sp_num = 6 * d_sq_sum;
sp_denom = n * ((n ^ 2) - 1);

sp = 1 - (sp_num / sp_denom);

fprintf('');
% ============== OUTPUT =============

% 

% ===================================