n = 10;
nt = 100;
ft = linspace(0,5,n);
F = zeros(1,n);
F(1) = 10;

t = linspace(0,5,nt);
F_interp = interp1(ft,F,t);

figure;
subplot(2,1,1)
plot(ft,F,'-ro');
grid on

subplot(2,1,2)
plot(t, F_interp, '-go');
grid on