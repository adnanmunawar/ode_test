clc;
clear all;
global FTpair
tspan = [0;5];
y0 = [0;0];
nt = 50;
ft = linspace(tspan(1), tspan(2),nt);
F = zeros(nt,1);

F(1) = 10;
m = 0.1;
B = 0.1;


[t,y] = ode45(@(t,y) my_ode(t,y,m,B,F,ft, true), tspan, y0);
figure

% subplot(2,1,1)
plot(t,y)
grid on
legend('Position', 'Velocity')
% 
% subplot(2,1,2)
% scatter(FTpair(2,:), FTpair(1,:), 40,'.')
% grid on
% legend('Interpolated Force')
