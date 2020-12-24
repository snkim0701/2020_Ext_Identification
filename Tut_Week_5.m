
clear all; clc;
num = 1;
M = 1; % kg
b = 10;   % viscosity 
k = 20;  % srpring constant

%%  run simulink 

%  check the gain 
P = 319;
I =538;
D=4.3844;
N = 18.16;

%% First Order Time Delay system

clear all; clc

Ks = 0.1;     % the steady state gain
T = 1;       % time constant
a = 10;     % 
L = 0.1;    % time delay 


Kp =100;    % proportional gain

%
P = 15.376;
I = 25.0289;
D = 0.53908;
N = 6.4951;

%% check saved variables

whos
plot(tout, xout(:,1)); hold on; grid on
plot(tout,xout(:,2));
hold off
