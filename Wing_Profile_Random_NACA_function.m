%{
    NACA 4 digit airfoil plot function
    Created by: Jacob Lawson
    Date: 02/05/2019
%}  

t = (randi([5 18]))/100; % generates a random max thickness between 5 and 18 as a percentage
x = 0 : 0.01 : 1; % generates x as a series of values between 0 and 1 with a step of 0.01
Ytx = 5*t*(0.2969*(x.^0.5)-0.1260*(x.^1)-0.3516*(x.^2)+0.2843*(x.^3)-0.1015*(x.^4));

Cmax = (randi([1 10]))/100; % random max Camber between 1 and 10 as a percentage
A = Cmax/0.25; % function A dependant on Cmax
C = -A*((x.^2)-(x.^1)); % Camber dependant on A and x
Yu = C+(Ytx); % upperside of airfoil
Yl = C-(Ytx); % underside of airfoil
plot (x,Yu,x,Yl,x,C)
grid on
grid minor
axis equal
xlabel('x/C')
ylabel('Ytx/C')
title('Graph plot for a cambered 4-digit NACA airfoil')
