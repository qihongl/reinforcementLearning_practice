function [ ] = updateWeights( )

global a w p;
% change in weights equals input times reward prediction error
if w.rS.handPos == w.rS.targPos
    Rwd = 1;
else
    Rwd = max(a.wts*w.vS.visInput');
end
a.Rwd = Rwd;
a.dfRwd = Rwd*p.gamma^w.rS.td;
% isize = min(abs(a.dfRwd - a.act(a.choice)),.01);
% isign = sign(a.dfRwd - a.act(a.choice));
% inc = p.lrate*isize*isign;
inc = p.lrate*(a.dfRwd - a.act(a.choice));
a.wts(a.choice,:) = a.wts(a.choice,:) + inc*w.vS.oldInput;
end

