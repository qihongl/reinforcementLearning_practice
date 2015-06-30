% written by Professor Jay McClelland
function [] = updateQandS()
global w a p

%we assume we have already chosen an a current action (cura) in a current
%state curs and that we have visited that state (nexts) and experienced 
%the available reward

%we update the agent's representation of the value of cura in curs, then
%replace the current state with the next state

a.q(w.curs+p.range+1,w.cura) = (1-p.alpha)*a.q(w.curs+p.range+1,w.cura)...
    + p.alpha * (w.R + p.gamma * max(a.q(w.nexts+p.range+1,:)));

w.curs = w.nexts;
w.cura = 0;
end

