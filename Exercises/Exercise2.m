% EXERCISES 2

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%% PART 1 %%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Declare a vector in 3 different ways

v1 = [1 2 3 4 5 6 7 8 9 10];

v2 = [1:1:10];

v3 = linspace(1,10,10);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%% PART 2 %%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Create polynomial s^4 +1 and solve it (find the roots)

P = [1 0 0 0 1];
roots(P)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%% PART 3 %%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Write a function called LPF which returns the volume of a cylinder given
% its radius and its height.

h = 15;
r = 8;

V = cylinderVolume(h,r);

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%% PART 4 %%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Write a function called LPF which outputs the Bode plot of a Low Pass
% Filter (Bode plot: gain in dB and phase as a function of frequency).
% The transfer function of a low pass filter is defined as:
% H(f) = 1 / ( 1 + j * (f / fc) )
% Gain (in dB) defined as: G(f)= 10 Log10 |H(f)|^2
% Where fc i the cut-off frequency entered as a parameter.
% To plot see semilogx()

fc = 1000;
f = linspace((1/100)*fc,100*fc);
LPF(fc,f)

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%% PART 5 %%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% uk -> u0 = 1
%       uk+1 = 5 * uk^2 - 3

% give: u15 (for loop)
%       the k min so that uk > 42 (while loop)



%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%% FUNCTIONS %%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function V = cylinderVolume(h,r)
    V = pi .* h .* r.^2;
end

function LPF(fc,f)
    % Compute H(f)
    Hf = 1 ./ ( 1 + ( 1j * (f ./ fc) ) );
    Gf = 10 .* log10( abs(Hf).^2 );
    semilogx(Gf)
end

function uk

