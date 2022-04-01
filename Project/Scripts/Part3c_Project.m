% Maths Tools: MATLAB Project
% Authors: Kadriye Nur Bakirci
%          Miguel Angel Guzman

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% PART 3.3 %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  Fishing in George’s Bank
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Beginning in 1925, assume that fish 3 years old and older are caught at a rate such
% that each year, 25% of those groups are taken. Fish under 3 years old may not be
% taken (the distinction is based upon size).
%(a) What is the matrix form of the model now? ( modification of equation (1),above). Did you assume the fish were harvested before or after the annual birth
% process occured? Please generalize to show a model reflecting any harvesting rate which you may denote by h. Thus above, h = 0.20.
% (b) What does the population now look like for 1930, 1950, 1995, 2000? Is this a good strategy?

caught = 0.25;
h = 1-caught;
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
B = [100 0 0 0 0 0 0 0 0 0];
x(:,1) = transpose(B);

% Geting the varaibles modified after 1925
year=A.*h
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

Population_Harvest;
Population_No_Harvest;

end

Population_Harvest=Fishes_Caught*x(:,1);
Population_No_Harvest=A^i*x(:,1);
Year_Population_Harvest(K)=1900+K;
Year_Population_Harvest(K)=Population_Harvest(1);
Year_Population_No_Harvest(K)=Population_No_Harvest(1);

end

% Starting with an initial population in 1925, we reduced the survival rates of fishes aged 3 and up by 25 percent. 
% During the harvesting process, fishers use nets of different materials and thicknesses. One of the methods used for many years used a material that allowed fish below a certain age to slip through the holes in the net. 
% We then compared the populations of 1930, 1950, 1995, and 2000. It’s clear that the population is still increasing rapidly. 
% We can raise the harvesting rate to over 50% of the population, and still maintain a growing population. 


