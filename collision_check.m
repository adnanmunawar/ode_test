function F = collision_check(p)
d = 1;

K = 100;

dx = p - d;
if dx >= 0
    F = K *(p-d);
else
    F = 0;
end