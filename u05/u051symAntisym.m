function [ S, A ] = u051symAntisym( M )
%U051SYMMASYMM Matrix-Zerlegung in symmetrischen und antisymmetrischen Teil

n = size(M,1);
if n ~= size(M,2),
    error('Matrix not quadratic');
end

S = M;
A = zeros(n);

for ii = 1 : n,
    for ij = ii + 1 : n,
        % Mittelwert
        a = (M(ii,ij) + M(ij,ii)) ./ 2;
        
        % anti-symmetrischer Teil: Differenz zum Mittelwert
        A(ii, ij) = M(ii, ij) - a;
        A(ij, ii) = M(ij, ii) - a;
        
        % symmetrischer Teil: Mittelwert
        S(ii,ij) = a;
        S(ij,ii) = a;
    end
end

end
