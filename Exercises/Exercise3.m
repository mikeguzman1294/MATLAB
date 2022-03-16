% All wave forms use the same time vector

N = 10000; % Number of Points for each Signal
T = 5*10^(-4); % Maximum Duration
t = linspace(0,T,N); % Vector temps

%%%%%%%%%%%%%%%%%%%%%%%%%%%% FIRST SIGNAL %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% The sine wave: frequency = 100kHz Amplitude = 0.3 V and a phase= 30°.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

f0 = 10^5;
Am = 0.3;
Ph = 30 * pi / 180;

s1 = Am * sin(2*pi*f0*t+Ph);

figure(1)
subplot(2,2,1)
plot(t,s1)
title('Sinewave signal')
ylim([-0.4 0.4])


%%%%%%%%%%%%%%%%%%%%%%%%%%%% SECOND SIGNAL %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Amplitude modulated signal given by:
% Modulating signal: cosin wave with amplitude a=0.1 and frequency fm=5kHz
% Carrier: sinwave with amplitude A=1 and frequency fc=100kHz
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% So Modulating signal is defined by:
% xm(t) = Am * cos (wm * t)

% While Carrier signal is defined by:
% xp(t) = Ap * cos (wp * t)

% Which gives us the Amplitude Modulating Signal:
% x(t) = Ap * (1 + Am * cos (wm * t)) * cos (wp * t)

% Definition of modulating signal parameters
Am = 0.1;
fm = 5^5;

% Definition of modulating signal parameters
Ap = 0.1;
fp = 100^5;

% We define the Amplitude Modulated Signal:
s2 = Ap * (1 + Am * cos(2*pi*fm * t)) .* cos(2*pi*fp * t);

figure(1)
subplot(2,2,2)
plot(t,s2)
title('AM modulated signal')
ylim([-0.4 0.4])






