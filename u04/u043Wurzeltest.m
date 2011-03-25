z=[1,-1,1+i,-1-i,8]
n=[2 3 4 5]

for k=1:size(n,2)
    disp('Potenz= ' + n(k))   
    u043(z,n(k)).^n(k)'
    
end
