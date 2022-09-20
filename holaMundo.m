%% Vx vs. t
clear;
clc;
%Los siguientes valores los omitimos por ser muy pequeños,
%asignamos un valor más grande (c)
% q= 4.646e-19;%C
% m= 1;%kg
% B0=10;%T
% L=0.5; %m
% c=(-4/3)*(q^2)*(B0^2)*(L^(1/2))*(1/m^3)
vx0=20; %m/s
c=2;
f= @ (t,x) (x^(1/2))*t^2*c+vx0;
y0=20; 
t0=0;
tf=5;
h=0.1;
[t,vx]=rk4(f,y0,t0,tf,h);
plot(t,vx,'-r')
hold on
title('Velocidad en x vs. Tiempo')
xlabel('Tiempo')
ylabel('Vx')
