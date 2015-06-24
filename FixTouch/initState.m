function [ ] = initState( )

global a w d h p;

%realState is characterized by the position of a target to touch,
          %position of eye, and position of hand
          %in a 101-pixel one-d space
          
%viewedState is the input I have given that my eye and hand are 
%at particular positions w.r.t. the realState of the world
%for now we treat hand position as a single value rather than as a
%distribution over possible values in a map.

%actions consist of moving the eye OR the hand a certain distance



%a.net = zeros(2,1);
a.act = zeros(2,1);
a.dfRwd = 0;
a.Rwd = 0;

w.rS.time = 0;
w.rS.td = 0;
w.stateNum = -1;
w.rS.targPos = round(61*(rand-.5)); %target will be somewhere in the
                                       %range -20 to 20
w.rS.eyePos = round(5*(rand-.5));  %eye close to origin at start
w.rS.handPos = round(21*(rand-.5)); % hand in intermediate range
while w.rS.handPos == w.rS.targPos % don't start with hand on target!
    w.rS.handPos = round(21*(rand-.5)); 
end
w.vS.oldInput = zeros(1,101);
w.vS.visInput = zeros(1,101);
w.out.handStep = 0;
w.out.eyeStep = 0;
h = struct('w',w);
axes(d.hax); cla;
axes(d.rax); cla;
end

