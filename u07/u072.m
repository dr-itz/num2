%u072
% Spiegelungsprinzip bei komplexer DFT und gerader Funktion Die komplexe DFT einer geraden abgetasteten Funktion mit 40 Punkten p = 1:40 f(p) = [1 1 1 1 1 1 1 zeros(1,27) 1 1 1 1 1 1] berechnet die Summen der k-ten Koeffizienten als sum(f .* exp(i*k*(0:39)*2*pi/40)) Testen Sie damit das Spiegelungsprinzip, indem Sie die Koeffizienzen k = 1,39 , dann 3, 37 sowie 5, 35 mit dieser Formel bestimmen. 
% Vergleichen Sie damit die komplexe Zahlenfolge der mit der Bibliotheksfunktion fft bestimmten ft = fft(f). (Im fft-Resultat ist der zugehörige harmonischen-Wert k = index -1 , weil beim Index 0 die Gleichstrom-Komponente steht.p=1:40;


figure(1)
clf, grid on; hold on; xlabel('Koeffizient k')
title('Vergleich der Summen bei den Koeffizienten (k) mit fft Formel (rot)')
f=[1 1 1 1 1 1 1 zeros(1,27) 1 1 1 1 1 1];
kvector=[];

% DFT mit Matlab Funktion berechnen, Vektor um 1 schieben, weil bei Index=0
% DC Komponente
dft=real(fft(f));
plot(dft(2:length(dft)),'r');


% mit Formel berechnte Werte in 3 Farben darstellen (etwas rechenintensiv,
% dafür lesbarer!)
for k=1:39;
    v=real(sum(f .* exp(i*k*(0:39)*2*pi/40)));
    plot(k,v,'g+');
    kvector=[kvector real(v)];
end

for k=3:37;
    v=real(sum(f .* exp(i*k*(0:39)*2*pi/40)));
    plot(k,v,'m+');
end

for k=5:35;
    v=real(sum(f .* exp(i*k*(0:39)*2*pi/40)));
    plot(k,v,'b+');
end

% die k Werte sind symmetrisch von 1:39 verteilt
% Differenz also = 0 (< 10E-13)
kvector(1)-kvector(39)
kvector(3)-kvector(37)
kvector(5)-kvector(35)

% Vergleicht von dft=fft(f) mit Summen der k-ten Koeffizienten
dft=dft(2:length(dft)); % ohne Index 0!
dft(1)-kvector(1)
dft(3)-kvector(3)
dft(5)-kvector(5)
dft(35)-kvector(35)
dft(37)-kvector(37)
dft(39)-kvector(39)



% Anm.: da Imaginärteile immer 0 waren, wurde der Einfachheithalber jeweils nur der
% Realteil verwendet.
% Ansonsten viele " Imaginary parts of complex X and/or Y arguments
% ignored" Warnungen
% 