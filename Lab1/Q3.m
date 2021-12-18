
Time_taken_1 = [];Time_taken_2 = [];

for i = linspace(200,1150,20)
    A = randn(int16(i));
    b = randn(int16(i),1);
    tic;
    x = A\b;
    Time_taken_1 = [Time_taken_1;toc];
    tic;
    x = inv(A)*b;
    Time_taken_2 = [Time_taken_2;toc]; 
end

semilogx(linspace(200,1150,20),Time_taken_1);
hold on;
semilogx(linspace(200,1150,20),Time_taken_2);
legend('GEPP method','Inversion method');
ylabel('Time taken');
xlabel('Matrix size');