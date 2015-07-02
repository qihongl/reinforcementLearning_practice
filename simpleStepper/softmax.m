% x is expected to be a vector of q values for a state: Q(s,:)

function [prob] = softmax(x, scale)
% if there is no input scaling factor, just don't scale it
if nargin == 1 
    scale = 1; 
end
% softmax transformation
prob = (x.^scale) / sum(x.^scale);
% this should return a probability distribution (mass function)
% so one can check it sum to 1 
end