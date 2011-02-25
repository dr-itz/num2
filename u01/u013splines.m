% u013 Elementare kubische Splines

fprintf ('Teilaufgabe a')
T = [0 0 0 1; 0 0 1 0; 1 1 1 1; 3 2 1 0];
s = [1; 0; 0; 0;];
a = T \ s

fprintf ('Teilaufgabe b')
T = [0 0 0 1; 0 0 1 0; 1 1 1 1; 3 2 1 0];
s = [0; 1; 0; 0;];
a = T \ s

fprintf ('Teilaufgabe c')
T = [0 0 0 1; 0 0 1 0; 1 1 1 1; 3 2 1 0];
s = [0; 0; 1; 0;];
a = T \ s

fprintf ('Teilaufgabe d')
T = [0 0 0 1; 0 0 1 0; 1 1 1 1; 3 2 1 0];
s = [0; 0; 0; 1;];
a = T \ s