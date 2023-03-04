function bid = Beta(t, s1, s2)
% Beta is the function which represents the optimal bid of each bider

% t is the type of bidder (cost of production in this case)

% s1 is the part of the value captured by the bidder in case they lose

% s2 is the part of the value captured by the opponent
% in case of defeat

psi = (s1 - s2)*(1 + 2*s2)/((1 + 2*s2)*(1 + s1) + s1*(1 + s2));
bid = (s2 + psi)/(1 + s2) + t./(1 + 2*s1);

end

