function [] = selectAction( )
%UNTITLED2 Summary of this function goes here
%   Detailed explanation goes here

global w a p;

targGuess = choose(w.vS.visInput) - 51;

if p.learner == 0
    if abs(targGuess) < 3
        w.out.chooseHand = 1;
    else
        w.out.chooseHand = 0;
    end
else
%      a.net = a.wts*w.vS.visInput';
%      scnet = p.smgain*a.net;
%      a.act = exp(scnet)/sum(exp(scnet));
     a.act = a.wts*w.vS.visInput';
     a.choice = choose(a.act.^a.smgain);
     if a.choice == 1
         w.out.chooseHand = 1;
     else
         w.out.chooseHand = 0;
     end
end
if w.out.chooseHand
        w.out.eyeStep = 0;
        w.out.handStep = targGuess - w.vS.handPos;
else
        w.out.handStep = 0;
        w.out.eyeStep = targGuess; %already in eye-centered coordinates
end
