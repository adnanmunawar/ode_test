function [dy] = my_ode(t,y,m,B,Fe,ft)
global F_input t_input
F = interp1(ft,Fe,t);
F_input = [F_input,F];
t_input = [t_input t];
dy = zeros(2,1);
dy(1) = y(2);
dy(2) = (F - B * y(2)) / m;
end