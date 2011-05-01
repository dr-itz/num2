% u073 - Spiegelungsprinzip bei komplexer DFT und ungerader Funktion
% Analog wie bei u072 soll diesmal für die ungerade Funktion die komplexe
% DFT einer abgetasteten Funktion mit 40 Punkten
%    p = 1:40
%    f(p) = [0 1 2 3 4 3 2 1 zeros(1,25) -1 -2 -3 -4 -3 -2 -1 ]
% als Summe für die k-ten Koeffizienten mit der Formel
%    sum(f .* exp(i*k*(0:39)*2*pi/40))
% berechnet werden. Testen Sie damit das Spiegelungsprinzip, indem Sie die
% Koeffizienzen 1, 39, 2, 38 sowie 3, 37 mit dieser Formel bestimmen.
% Vergleichen Sie auch diese Resultate mit ft = fft(f). 

clear; clf; clc;
format bank
grid on; hold on;
xlabel('Koeffizient k');
title('Vergleich der Summen bei den Koeffizienten (k) mit fft Formel (rot)');
figure(1);

f = [0 1 2 3 4 3 2 1 zeros(1,25) -1 -2 -3 -4 -3 -2 -1 ];

kvec = zeros(1,39);

% DFT mit Matlab Funktion berechnen, Vektor um 1 schieben, weil bei Index=0
% DC Komponente
dft = imag(fft(f));
plot(dft(2:end), 'r');

for k = 1:39,
    % ohne das "-" ist es spiegelsymmetrisch mit fft(). Wieso?
    kvec(k) = -imag(sum(f .* exp(1i*k*(0:39)*2*pi/40)));
end
plot(kvec, 'g+');

% die k-Werte sind punktsymmetrisch von 1:39 verteilt
% Summe also = 0 (< 10E-13)
fprintf('Summen 1,39; 2,38; 3,37\n');
kvec(1)+kvec(39)
kvec(2)+kvec(38)
kvec(3)+kvec(37)

% Vergleicht von dft=fft(f) mit Summen der k-ten Koeffizienten
fprintf('Vergleiche mit fft()\n');
ft=dft(2:end); % ohne Index 0!
ft(1)-kvec(1)
ft(2)-kvec(2)
ft(3)-kvec(3)
ft(37)-kvec(37)
ft(38)-kvec(38)
ft(39)-kvec(39)
