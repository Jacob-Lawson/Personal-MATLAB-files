%{
    True Air Speed Simulation
    Created by: Jacob Lawson
    Date: 02/05/2019
%}  

% V = true airspeed
m = 85000; % aircraft mass in kg
g = 9.81; % acceleration due to gravity in m/s
S = 122.6; % wing surface area m^2
Cl = 0.6 : 0.001 : 1.4; % coefficient of lift

a = (2*m*g)/(S); % constant

p0 = 1.2256; % air density in kg/m^3 @ sea level
b0 = (1)./(p0*(Cl.^1)); % variable

p5 = 0.7368; % air density in kg/m^3 @ 5,000m
b5 = (1)./(p5*(Cl.^1)); % variable

p10 = 0.4138; % air density in kg/m^3 @ 10,000m
b10 = (1)./(p10*(Cl.^1)); % variable

V0 = (a*b0).^.5; % true airspeed @ sea level
V5 = (a*b5).^.5; % true airspeed @ 5,000m
V10 = (a*b10).^.5; % true airspeed @ 10,000m
% disp(V0); activate for error checks
% disp(V5); activate for error checks
% disp(V10); activate for error checks

hold on
a1 = plot(V0,Cl); M1 = "At Sea Level";
a2 = plot(V5,Cl); M2 = "At 5,000 m";
a3 = plot(V10,Cl); M3 = "At 10,000 m";
legend([a1,a2,a3], [M1, M2, M3]);

grid on
grid minor
xlabel('True Airspeed (m/s)')
ylabel('Coefficient of lift (Cl)')
title({'Graph to show the true airspeed of an Airbus A321', 'against its Cl at 3 different altitudes'})