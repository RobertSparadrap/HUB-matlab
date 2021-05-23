v=2*10.^8;
B=beta(v);
l=lambda(B);

A=[l 0 0 -B*l; 0 1 0 0; 0 0 1 0; -B*l 0 0 l];
obj=[5; 4; 4; 0];

new=A*obj;
new(1)

function b = beta(v)
b=v/(3*10.^8);
end

function l = lambda(B)
l=sqrt(1-B.^2);
end