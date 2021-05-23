loop(5,5)

function A = loop(k,l)
    nb=1;
    for i = [1:k]
        for j = [1:l]
            A(i,j)=nb;
            nb=nb+1;
        end
    end
end
