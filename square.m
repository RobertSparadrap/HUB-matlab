A=[0 1 1 0; 1 0 0 1; 1 0 0 1; 0 1 1 0];
vec=[0 1;1 1;0 0;1 0]
rot=[cos(60) -sin(60); sin(60) cos(60)]
B=vec*rot;
gplot(A,B);