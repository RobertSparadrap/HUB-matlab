van(5)

function A = van(n)
    for i = [1:n]
        nb=1;
        for j = [1:n]
            A(i,j)=nb^(i-1);
            nb=nb+1;
        end
    end
end
