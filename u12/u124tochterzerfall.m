global lambdaN
global lambdaM

lambdaN = input('Lambda N eingeben: ');
lambdaM = input('Lambda M eingeben: ');

yin = [10 0]';
[xsol, ysol] = ode45('tochterzerfall', 50 , yin);
plot(xsol, ysol);
