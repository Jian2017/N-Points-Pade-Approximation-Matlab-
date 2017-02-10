function a=continued_fraction_coefficient(z,u)

a=z;

N=size(z,1)*size(z,2);

% g is two dimensional array,  g(i,j)
g=zeros(N,N);
for i=1:N
    g(1,i)=u(i);
end

for i=2:N
    for j=i:N
        g(i,j)=( g(i-1,i-1) -g(i-1,j) )/ ( (z(j)-z(i-1))*g(i-1,j));
    end
end

for i=1:N
    a(i)=g(i,i);
end

return


