function [ scpval ] = fctscalprod(xv, f1v, f2v)
%function [ scpval ] = fctscalprod(xv, f1v, f2v)
% Skalarprodukt von 2 parallel tabellierten Funktionen f1v und f2v, 
% beide ueber x   aequidistant tabelliert
% Trapezregel  (g1 + 2g2 + 2g3 + + 2gn-1 + gn)*dx/2

   sum = 0;
   % alle elemente einfach summieren
   for k=1:length(f1v)
       sum = sum + f1v(k)*f2v(k);
   end
   % Summe verdoppeln
   sum = sum * 2;
   % randwerte welche nur einfach vorkommen einmal abzaehlen
   % erster Index Wert abzaehlen
   sum = sum - f1v(1)*f2v(1);
   % Schluss-Index, Wert abzaehlen
   sum = sum - f1v(end)*f2v(end);
   % dx beruecksichtigen
   scpval = sum*(xv(2)-xv(1))/2;
end
