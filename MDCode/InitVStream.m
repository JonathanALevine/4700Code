doPlot = 1;
dt = 5e-15;
TStop = 3000 * dt;
InitDist = 0.0;
Method = 'VE'; % VE -- verlot; FD -- Forward Difference

Mass0 = 14 * C.am; % Silicon
Mass1 = 100 * C.am; % Argon
Mass2 = 50 * C.am; % Boron


AtomSpacing = 0.5430710e-9;
LJSigma = AtomSpacing / 2^(1 / 6);
LJEpsilon = 1e-21;

PhiCutoff = 3 * AtomSpacing * 1.1;

T = 30;

% AddCircAtomicArray(5, 0, 0, 0, 0, 0, T, 0);

% Add an array of particles of type 0, 1, 2
AddEllipticAtomicArray(5, 6, 0, 0, 0, 0, 0, T, 0);

% AddRectAtomicArray(10, 10, 0, 0, 0, 0, 0, T, 0);
% vy0 = -sqrt(0.02*Ep/Mass1);
% AddRectAtomicArray(4,4,0,12*AtomSpacing,0,vy0,0,T,1);
Ep = 2;

% Add a Particle Stream of type 0, 1, 2
AddParticleStream(10, 0.1, 10, -pi / 2, 2, Ep * C.q_0, 5, true);

Size = 10*AtomSpacing;
Limits = [-Size +Size -Size +Size]; % square is good
PlDelt = 5 * dt;

PlotFile = 'BlockSt.gif';
% PlotPosOnly = 1;
% doPlotImage = 0;
PlotSize = [100, 100, 1049, 1049];

ScaleV = .02e-11;
ScaleF = 10;
