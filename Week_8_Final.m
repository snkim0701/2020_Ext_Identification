clear all; clc

clear all; clc
x = 1:1:10;

% by batch method
AveBatch = 1/(size(x,2))*sum(x);

% by recursive method 
AveRec(1) = x(1);   % initialize
for i = 2:10
    AveRec(i) =((i-1)/i)* AveRec(i-1) +(1/i)*x(i);   
end
AveRec

%%  linear  least square 

clear all;clc

% real data generation
N = 20;    % the number of sampling
ts = 0.1;    % the sampling time
t = 0:ts: N*ts - ts;
t = t';
x0 = 10; 
v = 100; 
a = 100;
x = x0 + v*t + 1/2 * a*t.^2;

figure(1)
plot(t,x); grid on; hold on

%  measured position
m1 = x+10*rand(N,1);
plot(t,m1,'+r');


disp('time, measured position  time measued position')
[t(1:10) m1(1:10)  t(11:20)  m1(11:20)]

% model  as (position, velocity, acceleration)
% y1 = x0 + v0*t + 1/2 a t^2
%
for i =1: N
    A(i,:) = [1 t(i) 1/2 *t(i)^2];
end
est =inv(A'*A)*A'*m1;

yest = est(1)+ est(2)*t + 1/2*est(3)*t.^2;
plot(t,yest,'k')


% model as (position, vrlocity)
for i =1: N
    M(i,:) = [1 t(i) ];
end

estM =inv(M'*M)*M'*m1;

yestM = estM(1)+ estM(2)*t ;
plot(t,yestM,'r')
hold off



