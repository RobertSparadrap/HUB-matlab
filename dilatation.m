N = 3;
x=linspace(-N, N,30);
[X,Y]=meshgrid(x,x);
z=del2((1000/sqrt(2*pi).*exp(-(X.^2/2)-(Y.^2/2))));
surf(X,Y,z);