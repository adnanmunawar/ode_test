function [dy] = my_ode(t,y,m,B,Fe,ft,check_collision)
global FTpair
if check_collision == true
    Fcoll = collision_check(y(1));
else
    Fcoll = 0.0;
end
F = interp1(ft,Fe,t) - Fcoll;

FTpair = [FTpair,[F;t]];
dy = zeros(2,1);
dy(1) = y(2);
dy(2) = (F - B * y(2)) / m;
end