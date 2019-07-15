%%  Created by Luis Alejandro (alejand@umich.edu)
close all
f = 1/(2*pi);         % fundamental frequency 10 Hz
t = -10*pi:0.0001:10*pi;  % time vector (1 sec sampled every millisecond)
N = 5;          % number of harmonics to approximate signal
A = 1;          % amplitude of approx signal
%% TIME DOMAIN
figure;
signal = zeros(size(t));
a0 = 0;
signal = signal + a0;
for n = 1 : N
    s = 2*((1/(n^2*pi^2))*(-1)^n*sin(2*pi*n*f*t));	% 4*pi factor is 2 * (2pi/npi)
    subplot(N+1,1,n);
    plot(t,s);
    signal = signal + s;
    grid on
end
subplot(N+1,1,N+1);
plot(t,signal);
xlabel('Time');
ylabel('Amplitude');
title('Approximation of a Rectangular Wave in the Time Domain');
