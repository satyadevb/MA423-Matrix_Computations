
k = 200;
load clown.mat; 
[U, S, V] = svd(X); 
colormap('gray');
image(U(:, 1:k)*S(1:k, 1:k)*V(:,1:k)')

k_vals = [50:10:150];
data=[];
i=1;
for k = k_vals
   compression=520*k/64000; 
   err = S(k+1,k+1)/S(1,1);
   data = [data; k compression err];
end    
vars={'k','Compression Ratio','Error '};
T = table(data(:,1),data(:,2),data(:,3),'VariableNames',vars);
disp(T);