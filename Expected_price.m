function Ep = Expected_price(nt, s1, s2)
%EXPECTED_PRICE simulates an actual auction scenario
% nt is the number of simulations.

t_player1 = rand(1,nt);
t_player2 = rand(1,nt);

b_player1 = Beta(t_player1, s1, s2);
b_player2 = Beta(t_player2, s2, s1);

winner1 = b_player2>b_player1;

price = (s2*(1 - b_player2) + b_player2).*winner1 ...
    + (1 - winner1).*(b_player1 + s1*(1 - b_player1));

Ep = mean(price);
end

