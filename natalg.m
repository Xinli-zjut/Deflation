% Natural algorithm of matrix multipulation---By Xin Li-2023/10/18.

function nature= natalg(m, n, p)
nature = [];
for i = 1:m
    for j = 1:n
        for k = 1:p
            E1 = zeros(m,n); E2 = zeros(n,p); E3 = zeros(p,m);
            E1(i,j) = 1;
            E2(j,k) = 1;
            E3(k,i) = 1;
            rE1 = reshape(E1, [m*n, 1]);
            rE2 = reshape(E2, [n*p, 1]);
            rE3 = reshape(E3, [p*m, 1]);
            nature=[nature;rE1; rE2; rE3];
        end
    end
end

        