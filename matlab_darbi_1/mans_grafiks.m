function createfigure(X1, ymatrix1)
%CREATEFIGURE(X1, YMATRIX1)
%  X1:  stairs x
%  YMATRIX1:  stairs matrix data

%  Auto-generated by MATLAB on 08-Feb-2018 09:20:32

% Create figure
figure1 = figure;

% Create axes
axes1 = axes('Parent',figure1);
hold(axes1,'on');

% Create multiple lines using matrix input to stairs
stairs1 = stairs(X1,ymatrix1);
set(stairs1(1),'DisplayName','sinusoida','Color',[0 0 0]);
set(stairs1(2),'DisplayName','kosinusoida',...
    'MarkerFaceColor',[0.850980401039124 0.325490206480026 0.0980392172932625],...
    'MarkerEdgeColor',[0.749019622802734 0 0.749019622802734],...
    'Marker','diamond',...
    'LineWidth',4,...
    'Color',[1 0.843137264251709 0]);

% Create xlabel
xlabel('t,s');

% Create title
title('Mans pirmais grafiks');

% Create ylabel
ylabel('U,V');

box(axes1,'on');
grid(axes1,'on');
% Set the remaining axes properties
set(axes1,'Color',[0.39215686917305 0.474509805440903 0.635294139385223]);
% Create legend
legend1 = legend(axes1,'show');
set(legend1,'Color',[1 1 1]);
