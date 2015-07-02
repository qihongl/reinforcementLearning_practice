%% larger simulations
clear; clc % clear things up

%
nSubj = 10;
temp = zeros(100,1);
for i = 1 : nSubj
    run = explore(i);
    temp = temp + run.h.stepsToReward;
end

%% 
plot(temp/nSubj)
title('mean across 10 models, small punishment = 0', 'fontsize',14)