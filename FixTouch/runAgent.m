% written by Professor Jay McClelland
function [ results ] = runAgent( )
%UNTITLED11 Summary of this function goes here
%   Detailed explanation goes here

global a w h p d;

initState();
updateState();
showState();
i = 0;
while w.rS.handPos ~= w.rS.targPos && i < 50
    selectAction();
    Act();
    updateState();
    if p.learner == 1
        updateWeights();
    end
    showState();
    i = i+1;
end
%keyboard;
results.h = h;
results.a = a;
end
