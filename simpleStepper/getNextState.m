% written by Professor Jay McClelland
function [] = getNextState( )
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here
global w a p;

if w.cura == 1
    w.nexts = w.curs - 1;
else
    w.nexts = w.curs +1;
end
if w.nexts == 5
    w.R = 1;
else
    w.R = 0;
end
end

