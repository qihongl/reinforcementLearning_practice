function [ ] = setupWorld()
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

global w a p;

% w = struct([]);
% p = struct([]);
% a = struct([]);

p.range = 5;
p.gamma = .5;
p.alpha = .1;
p.qscale = 3;
p.nactions = 2;
p.trials = 10000;

a.q = .01 + zeros(2*p.range+1,p.nactions);
end

