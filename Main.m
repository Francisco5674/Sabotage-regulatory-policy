%% Auction Simulation
clear;
clc;
%% Expected price 
% Grill size of s1, s2 and t (types)
nt = 10^6;
n = 15;

% Percentage of consolation price of both players
S1 = linspace(0,1,n);
S2 = linspace(0,1,n);

[MS1, MS2] = meshgrid(S1, S2);

Z = zeros(n,n);
for i=1:n
    for j=1:n
        Z(i,j) = Expected_price(nt,MS1(i,j),MS2(i,j));
    end
end


%%
surf(MS1,MS2,Z);