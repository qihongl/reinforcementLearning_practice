% reinforcement learning: 1-D walker on int [-5,5]
% written by Professor Jay McClelland
function [rundata] = explore(seed)
if nargin == 0
    seed = randi([0 10],1);
end
% initialization
rng(seed);
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
global w a p h;
% w-world; a-agent; p-parameters; h-history

setupWorld;
h.stepsToReward = zeros(p.trials,1);
%qhist = zeros(p.trials,2*p.range+1,p.nactions);
textprogressbar('Start training: ');
for i = 1:p.trials
    textprogressbar(i);
    setupState;
   
    while abs(w.curs) < 5
        chooseAction();
        getNextState();
        updateQandS();
        w.steps = w.steps+1;
    end
    h.stepsToReward(i) = w.steps;
    %qhist(i,:,:) = a.q;
end
textprogressbar('Done training: ');

rundata = struct('h',h,'a',a,'p',p);
plot(rundata.h.stepsToReward);

end

