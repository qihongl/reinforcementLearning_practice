% written by Professor Jay McClelland
function [] = chooseAction()
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

global w a p;

denom = sum(a.q(w.curs+p.range+1,:).^p.qscale);
prob = (a.q(w.curs+p.range+1,:).^p.qscale)/denom;
w.cura = sample(prob)
end

function [c] = sample(pr)
rv = rand(1);
cp = cumsum(pr);
for i = 1:length(pr)
    if rv < cp(i)
        c = i;
        return;
    end
end
end
