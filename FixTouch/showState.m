% written by Professor Jay McClelland
function [ ] = showState( )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

global w d a h;

%plot the positions of eye, hand, and target in the real state
% axes(d.rSax);
% cla;
% plot(d.rSax,[-50 50],[0 0]); hold on;
% plot(d.rSax,-50:50,w.rS.visInput/max(w.rS.visInput));
% ylim(d.rSax,[-0.25 1.25]);
% text(w.rS.eyePos,0,'@','HorizontalAlignment','center');
% text(w.rS.handPos,0,'#','HorizontalAlignment','center');
% text(w.rS.targPos,0,'X','HorizontalAlignment','center');

axes(d.rax);
plot(w.rS.time,a.Rwd,'-*'); hold on;
ylim(d.rax,[-0.1 1.1]); xlim(d.rax,[-0.25,w.rS.time+0.25]);

t = w.rS.time;
%plot the history of eye and hand positions
axes(d.hax);
plot(d.hax,[-50 50],[t t]); hold on;
ylim(d.hax,[-0.25 t + .25]);
text(w.rS.eyePos,t,'@','HorizontalAlignment','center');
text(w.rS.handPos,t,'#','HorizontalAlignment','center');
text(w.rS.targPos,t,'X','HorizontalAlignment','center');

axes(d.wax);
plot(-50:50,a.wts);
end

