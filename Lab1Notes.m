clc, clear all, close all

% Make sure the symbolic toolbox is installed for this code to work. 

% Define vairables s and t and constant C as symbolic
syms s t C x(t)

% A function x(t) in terms of symbolic variable t
x(t) = t^2

% The laplace() function will laplace transform the function x(t) and so move from the time (t) domain to the s domain.
% Note the t and s placed in the function call as MATLAB will guess what
% the variable to perform the laplace transform without it. 
LAP = laplace(x(t),t,s)

% As it is written right now, the ilaplace() function will inverse laplace
% transform the output of the laplace transform in the piece of code just
% above. Note the placement of the s and t in the function call as MATLAB
% may not know what variab
ILPA = ilaplace(LAP,s,t)
