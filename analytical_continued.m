function y=analytical_continued(z,a,x)

N=size(z,1)*size(z,2);
temp=1;

for i=N:-1:2
    temp=temp*a(i);
    temp=temp*(x-z(i-1));
    temp=temp+1;
    temp=1/temp;
end

y=temp*a(1);

return