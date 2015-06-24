function [rundata] = explore( )
%UNTITLED5 Summary of this function goes here
%   Detailed explanation goes here
global w a p h;
% w-world; a-agent; p-parameters; h-history

setupWorld;
h.stepsToReward = zeros(p.trials,1);
%qhist = zeros(p.trials,2*p.range+1,p.nactions);

for i = 1:p.trials
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
rundata = struct('h',h,'a',a,'p',p);

end

