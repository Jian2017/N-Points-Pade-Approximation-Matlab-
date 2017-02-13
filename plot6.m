function plot6(z,u)

N=size(z,1)*size(z,2);
drawX=[0:N-1];

subplot(3,2,1);
plot(drawX,real(u),drawX,imag(u));

subplot(3,2,2);
uw=fft(u);
plot(drawX,real(uw),drawX,imag(uw));

subplot(3,2,4);
aw=continued_fraction_coefficient(drawX,uw);
uwi=u;
for i=0:N-1
    uwi(i+1)=analytical_continued(drawX,aw,i*1i);
end
plot(drawX,real(uwi),drawX,imag(uwi) );

subplot(3,2,3);
ui=ifft(uwi);
plot(drawX,real(ui),drawX,imag(ui));


subplot(3,2,5);
a=continued_fraction_coefficient(drawX,u);
ui2=u;
for i=0:N-1
    ui2(i+1)=analytical_continued(drawX,a,i*1i);
end
plot(drawX,real(ui2),drawX,imag(ui2));


subplot(3,2,6);
uwi2=fft(ui2);
plot(drawX,real(uwi2),drawX,imag(uwi2));


return
