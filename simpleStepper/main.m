%% larger simulations
% clear; clc;

% parameters
nSubj = 10;
ntrials = 100;
doPlotting = false;

% simulate
temp = zeros(ntrials,1);
rundata = cell(10,1);
for i = 1 : nSubj
    fprintf('%.2d: ',i);
    rundata{i} = explore(i);
    temp = temp + rundata{i}.h.stepsToReward;
end


%% plot the performance against training epochs
plot(temp/nSubj)

if doPlotting
    
    fontsize = 14;
    plot(temp/nSubj)
    hold on
    plot(temp1/nSubj)
    
    hold off
    leg = legend('small punishment = 0','small punishment = -0.05',...
        'Location','northeast');
    set(leg,'FontSize',fontsize);
    title('Average across 20 models', 'fontsize',fontsize)
    xlabel('number of trials', 'fontsize',fontsize)
    ylabel('steps used', 'fontsize',fontsize)
end