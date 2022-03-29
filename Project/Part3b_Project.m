% Maths Tools: MATLAB Project
% Authors: Kadriye Nur Bakirci
%          Miguel Angel Guzman

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PART 3.2 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Fishing in George’s Bank
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% In part two of Fishing in George’s Bank,we are asked to consider an environmental effect that changes the birth rates and survival rates of our fish population between the years 1950 and 1990. 
% With the effects of pollution on the fish, their birth rates and survival rates are decreased by 10% and 15% respectively. 
% Once after this data has been collected, we will compare that to the population of fish that has been unaffected by the pollution to determine the consequences. 
% Below will be both of the matrices used in this part.

B=[100 0 0 0 0 0 0 0 0 0];
X=transpose(B);

% Original Leslie Matrix
A=[0 0 1.5 4.2 3.8 2.5 1.5 0 0 0;0.65 0 0 0 0 0 0 0 0 0;0 0.68 0 0 0 0 0 0 0 0;0 0 0.75 0 0 0 0 0 0 0;0 0 0 0.7 0 0 0 0 0 0;0 0 0 0 0.6 0 0 0 0 0;0 0 0 0 0 0.55 0 0 0 0;0 0 0 0 0 0 0.4 0 0 0;0 0 0 0 0 0 0 0.35 0 0;0 0 0 0 0 0 0 0 0.2 0];

% Leslie matrix with pollution
D=[0 0 1.4 4.1 3.7 2.4 1.4 0 0 0;0.5 0 0 0 0 0 0 0 0 0;0 0.53 0 0 0 0 0 0 0 0;0 0 0.6 0 0 0 0 0 0 0;0 0 0 0.55 0 0 0 0 0 0;0 0 0 0 0.45 0 0 0 0 0;0 0 0 0 0 0.40 0 0 0 0;0 0 0 0 0 0 0.25 0 0 0;0 0 0 0 0 0 0 0.2 0 0;0 0 0 0 0 0 0 0 0.05 0];

%Up until 1950,fish population had been free from any environmental effects.In order to get population at the 1950 we simply multiply our original Leslie Matrix that has been raised to the power of 50 and multiplying it by our given starting population as follows:
C=A^50*X;

%Up until 1990,fish population had been free from any environmental effects.In order to get population at the 1990 we simply multiply our original Leslie Matrix that has been raised to the power of 90 and multiplying it by our given starting population as follows:
C_1=A^90*X;

%We have our population of fish at the year 1950, we can figure out how pollution will affect the fish in forty years.For this we will use the matrix with pollution by raising it to the fortieth power and then multiplying the resulting matrix by the population at the year 1950 as follows:
P=D^40*C;

%Without Pollution(matrix C_1/1900-1990)With Pollution(matrix P),that over a forty year time frame, pollution has been able to collapse in the fish population. 
%Taking the first age group, the numbers reduced from 4.9*10^12 to 2.09*10^9.The same hit can be seen every other age group.

%Plot showing difference between pollution and without pollution.
matrix1 = C_1;
matrix2 = P;
difference = matrix2-matrix1;
plot(difference)


