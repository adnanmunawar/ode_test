clc;
clear all;
global F_input t_input
tspan = [0;5];
y0 = [0;0];
nt = 180;
ft = linspace(tspan(1), tspan(2),nt);
F = zeros(nt,1);

F(1) = 10;
m = 0.1;
B = 0.3;


[t,y] = ode45(@(t,y) my_ode(t,y,m,B,F,ft), tspan, y0);
figure

subplot(3,1,1)
plot(t,y)
grid on
legend('Position', 'Velocity')

subplot(3,1,2)
plot(t_input, F_input)
grid on
legend('Interpolated Force')

subplot(3,1,3)
plot(F)
grid on
legend('Actual Force')
