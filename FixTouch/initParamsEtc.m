function [] = initParamsEtc( )
%
global p d a

p.wf = .25;
p.handTime = 5;
p.eyeTime = 1;
p.learner = 1;
p.lrate = .01;
p.runs = 4096;
p.gamma = .8;
p.smirate = .001;
p.eyebias = 2; %initial bias to prefer eye movement

d.fh = figure();
d.fh.WindowStyle = 'docked';
%d.rSax = subplot(3,1,1);
d.rax = subplot(3,1,1);
d.hax = subplot(3,1,2);
d.wax = subplot(3,1,3);
d.dtimes = 2.^(0:13);

a.wts = zeros(2,101);
a.wts(1,:) = normpdf(-50:50,0,50);
a.wts(2,:) = p.eyebias*normpdf(-50:50,0,50);
a.smgain = 1;
end

