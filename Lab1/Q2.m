
[s,scf,scb] = sumreciprocal(1000,5);
fprintf("Summing up (1/n) from n = 1 to 1000:\n");
fprintf("  s:  %f\n scf:  %f\n scb:  %f\n",s,scf,scb);
fprintf("  |s - scf| = %f\n",abs(s - scf));
fprintf("  |s - scb| = %f\n",abs(s - scb));
