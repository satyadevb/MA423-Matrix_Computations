
p = [1,-18,144,-672,2016,-4032,5376,-4608,2304,-512];
x = linspace(1.93, 2.08, 151);
y2 = (x-2).^9;
y1 = horner(p,x);

figure
plot(x,y1,'r',x,y2,'b')
title('Computing polynomial p(x)')
xlabel('x')
ylabel('p(x)')
legend('Horner method','(x - 2)^9')