fibon(12)

function f2 = fibon(n)
f1 = 1;
f2 = 1;
tmp=1;
for i = [1:(n-2)]
   tmp=f1;
   f1=f2;
   f2=f1+tmp;
end
end