% Maths Tools: MATLAB Project
% Authors: Kadriye Nur Bakirci
%          Miguel Angel Guzman

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PART 1.3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Fishing in George´s Bank
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% INTRO
% This model is concerned with the New England fishing industry, especially
% George’s Bank,which has fallen on desperate times of late. The model
% covers most of the 20th century as there is a multitude of data available.
% It is based upon the age specific Leslie model.
%
% Here, we assume we are looking at the haddock population of the North
% Atlantic, particularly George’s Bank. This is a critical area, for in the
% early and mid 20th century, New England fishing produced consistently over
% 80% of the United States fish. Also,in recent times, the diet of Americans
% has slowly moved away from red meat, for health reasons,and has included
% more fish.
%
% Matrix algebra and the basic Leslie population model. In this model,
% we assume that haddock live to 10 years of age, and may have offspring as
% early as 3 years old. The Leslie model for this situation, with a time
% period of 1 year, is of the form:
%
%         x(k + 1) = A x(k)    x(1) given   k = 1, 2, 3, . . .
%
% where A is a 10 × 10 matrix which is initially assumed to have values:
%
%     |  0     0    1.5   4.2   3.8   2.5   1.5    0     0     0  |
%     |0.65    0     0     0     0     0     0     0     0     0  |
%     |  0    0.68   0     0     0     0     0     0     0     0  |
%  A= |  0     0    0.75   0     0     0     0     0     0     0  |
%     |  0     0     0    0.7    0     0     0     0     0     0  |
%     |  0     0     0     0    0.6    0     0     0     0     0  |
%     |  0     0     0     0     0   0.55    0     0     0     0  |
%     |  0     0     0     0     0     0    0.4    0     0     0  |
%     |  0     0     0     0     0     0     0   0.35    0     0  |
%     |  0     0     0     0     0     0     0     0    0.2    0  |
%
% Equation (1) may be solved iteratively to give:
%
%         x(k + 1) = Ak x(1) k = 1, 2, 3, . . . 

%--------------------------------------------------------------------------
% SECTION 1
% If the haddock population in 1900 is:
%
%         x(1) = [100, 0, 0, 0, 0, 0, 0, 0, 0, 0]^T
%
% (Units are millions of pounds)
% What will the population be like in 1910? 1920? 1930? 1950? 1990? 2000?
% Based upon what you have seen, do you believe the population to be stable
% or unstable?

% Declaration of matrix A
A = [  0     0    1.5   4.2   3.8   2.5   1.5    0     0     0  ;
     0.65    0     0     0     0     0     0     0     0     0  ;
       0    0.68   0     0     0     0     0     0     0     0  ;
       0     0    0.75   0     0     0     0     0     0     0  ;
       0     0     0    0.7    0     0     0     0     0     0  ;
       0     0     0     0    0.6    0     0     0     0     0  ;
       0     0     0     0     0   0.55    0     0     0     0  ;
       0     0     0     0     0     0    0.4    0     0     0  ;
       0     0     0     0     0     0     0   0.35    0     0  ;
       0     0     0     0     0     0     0     0    0.2    0  ]

% Declaration of vector x. (Transposed row vector)
x1 = transpose([100 0 0 0 0 0 0 0 0 0]);

% Analysis of the population for every decade from 1910 until year 2000.
% Each vector will be printed in console.
% getPopulationYear function is defined at the end of the file.
for k = 1910 : 10 : 2000
    fprintf('Vector for year %d.\n', k);
    x = getPopulationYear(k, A, x1)
end

% Judging from this information we can infer that the population is unstable,
% because it’s growing exponentially. 
% It doesn’t hit a point where it plateaus, it just continues to grow.

% END OF SECTION 1
% -------------------------------------------------------------------------

% SECTION 2
% Suppose pollution has the effect of lowering each birth rate by 10% of the
% value given above and each survival coefficient by 15% beginning in 1950.
% What effect does this have on the population in 1990 as compared to
% having no pollution effects?

% ANALYSIS OF PROBLEM STATEMENT
% In part two of Fishing in George’s Bank,we are asked to consider an
% environmental effect that changes the birth rates and survival rates of
% our fish population between the years 1950 and 1990. 
% With the effects of pollution on the fish, their birth rates and survival
% rates are decreased by 10% and 15% respectively.
% Once after this data has been collected, we will compare that to the
% population of fish that has been unaffected by the pollution to determine
% the consequences. Below will be both of the matrices used in this part.

% Declaration as base polluted matrix as a copy of A initially
A_polluted = A;

% Computation of Leslie matrix with pollution
% Computation to lower each birth rate by 10%
for i = 3 : 7
    A_polluted(1,i) = A_polluted(1,i) - 0.1;
end
% Computation to lower each survival coeficcient by 15%
for i = 2 : 10
     A_polluted(i,i-1) = A_polluted(i,i-1) - 0.15;
end

A_polluted

% Up until 1950,fish population had been free from any environmental effects.
% In order to get population at the 1950 we simply multiply our original
% Leslie Matrix that has been raised to the power of 50 and multiplying it
% by our given starting population as follows:
C = A^50 * x1;

% Up until 1990,fish population had been free from any environmental
% effects.In order to get population at the 1990 we simply multiply our
% original Leslie Matrix that has been raised to the power of 90 and
% multiplying it by our given starting population as follows:
C_1 = A^90 * x1;

%We have our population of fish at the year 1950, we can figure out how
% pollution will affect the fish in forty years.For this we will use the
% matrix with pollution by raising it to the fortieth power and then
% multiplying the resulting matrix by the population at the year 1950
% as follows:
P = A_polluted^40 * C;

% Without Pollution(matrix C_1/1900-1990) With Pollution(matrix P), that
% over a forty year time frame, pollution has been able to collapse in the
% fish population. Taking the first age group, the numbers reduced from
% 4.9*10^12 to 2.09*10^9. The same hit can be seen every other age group.

%Plot showing difference between pollution and without pollution.
matrix1 = C_1;
matrix2 = P;
difference = matrix2-matrix1;
% plot(difference);

% END OF SECTION 2
% -------------------------------------------------------------------------

% SECTION 3
% Beginning in 1925, assume that fish 3 years old and older are caught at a
% rate such that each year, 25% of those groups are taken. Fish under 3
% years old may not be taken (the distinction is based upon size).

% (a) What is the matrix form of the model now?
% (modification of equation (1), above).
% Did you assume the fish were harvested before or after the annual birth
% process occured? Please generalize to show a model reflecting any
% harvesting rate which you may denote by h. Thus above, h = 0.20.

h = 0.25;

% Geting the variables modified after 1925
year=A.*h;
year(1,:)=A(1,:);
year(2,:)=A(2,:);
year(3,:)=A(3,:);

Fishes_Caught=1;
K=100;

for i=1:K
A1=A;
if i>25
A1=year;
end
Fishes_Caught=Fishes_Caught*A1;
if i==30 || i==50 || i==95 || i==100
fprintf("\n\n\n\n------------------------\n");
fprintf("---- Population in %d ----\n",1900+i);

Population_Harvest
Population_No_Harvest

end

Population_Harvest=Fishes_Caught*x(:,1);
Population_No_Harvest=A^i*x(:,1);
Year_Population_Harvest(K)=1900+K;
Year_Population_Harvest(K)=Population_Harvest(1);
Year_Population_No_Harvest(K)=Population_No_Harvest(1);

end




% FUNCTION DEFINITION SECTION

function x = getPopulationYear(year, A, x1)
    k = year - 1900;
    x = (A^k) * x1;    
end
