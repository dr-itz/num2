function [ res ] = tochterzerfall(t, y)

global lambdaN
global lambdaM
res = zeros(2 ,1);
res(1) = -lambdaN * y(1);
res(2) = lambdaN * y(1) - lambdaM * y(2);

end
