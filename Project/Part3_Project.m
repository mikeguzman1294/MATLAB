%Matlab project question 3 part a)
%Define the variables
A=[0 0 1.5 4.2 3.8 2.5 1.5 0 0 0;0.65 0 0 0 0 0 0 0 0 0;0 0.68 0 0 0 0 0 0 0 0;0 0 0.75 0 0 0 0 0 0 0;0 0 0 0.7 0 0 0 0 0 0;0 0 0 0 0.6 0 0 0 0 0;0 0 0 0 0 0.55 0 0 0 0;0 0 0 0 0 0 0.4 0 0 0;0 0 0 0 0 0 0 0.35 0 0;0 0 0 0 0 0 0 0 0.2 0];
B=[100 0 0 0 0 0 0 0 0 0];
x(:,1) = transpose(B);
%Create matrix iteration
for k=2:100
 x(:,k+1) = A^k * x(:,1)
end
 year_1 = x(:,11) % year 1910
 year_2 = x(:,21) % year 1920
 year_3 = x(:,31) % year 1930
 year_4 = x(:,51) % year 1950
 year_5 = x(:,91) % year 1990
 year_6 = x(:, 101) %year 2000
 %Judging from this information we can infer that the population is unstable, because it’s growing exponentially. It doesn’t hit a point where it plateaus, it just continues to grow.