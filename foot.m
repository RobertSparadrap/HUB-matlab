p=0.1;
p2=0;
p3=1;
p4=0.5;
p5=-0.1;
[e, f] = ball(p5);
[c, d] = ball(p4);
[a, b] =ball(p3);
[v, w] = ball(p2);
[x, y] = ball(p);
hold on, plot(x,y), plot(e, f), plot(c,d), plot(v,w), plot(a,b), plot([17, 17],[0, 2]), hold off
axis([0 20 0 6])

function [x, y]=ball(p)
t=[0:0.01:7];
m=400;
v=15;
a=pi/6;
vx=v*cos(a);
vy=v*sin(a);
g=9.81;

if p~=0
    x=calc_x_f(p, m, vx, t);
%    y=calc_y_f(p, m, vy, g, t);
    y=calc_y(p, m, vy, g, t);
else
    x=calc_x(p, m, vx, t);
    y=calc_y(p, m, vy, g, t);
end
end

function x = calc_x_f(p, m, vx, t)

x=(vx/p)*(1-exp(-p*t));
end

function y = calc_y_f(p, m, vy, g, t)

a=-(g/p)*t+(1/p)*(vy+(g/p))*(1-exp(-p*t));
if a<0
    a=0
end
y=a;
end

function x =calc_x(p, m, vx, t)
x=vx*t;
end

function y= calc_y(p, m, vy, g, t)
y=-(g/2)*(t.^2)+vy*t;
end