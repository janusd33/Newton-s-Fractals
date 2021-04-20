function [] = wykres(a,n,eps,max)
tic
%Funkcja rysuje wykres przedstawiający wizualizację szybkości zbieżności
%metody Newtona w dziedzinie zespolonej dla danego wielomianu zapisanego w
%bazie wielomianów Legendre'a. Wykres przedstawia płaszczyznę zespoloną
%ograniczoną punktami (-5-5i),(-5+5i),(5-5i),(5+5i).
%Funkcja przyjmuje następujące argumenty:
%a - współczynniki wielomianu zapisanego w bazie wielomianów Legendre'a.
%Opcjonalne argumenty:
%n - ilość punktów, dla których obliczana jest szybkość zbieżności metody Newtona
% w jednej osi, domyślnie 500;
%eps - dokładność, domyślnie 10e-6;
%max - maksymalna liczba iteracji, domyślnie 30.
if nargin == 1
    n = 500;
    eps = 10^(-6);
    max = 30;
end
if nargin == 2
    eps = 10^(-6);
    max = 30;
end
zakres = floor(n/2);
rozmiar = (zakres*2+1)^2;
%utworzenie wektora punktów w zależności od danego n
x = zeros(rozmiar,1);
k=1;
for l=-zakres/(n/10):1/(n/10):zakres/(n/10)
    for m=-zakres/(n/10):1/(n/10):zakres/(n/10)
            x(k,1)=complex(l,m);
            k=k+1;
     end
end
CzescRzeczywista = real(x);
CzescUrojona = imag(x);
%obliczenie wartości dla wektora punktów
Value = zeros(rozmiar,1);
for k=1:rozmiar
    Value(k,1) = iteracja(x(k),a,eps,max);
end
tablica = table(CzescRzeczywista,CzescUrojona,Value);
%tworzenie wykresu
h = heatmap(tablica,'CzescRzeczywista','CzescUrojona','ColorVariable','Value');
cdl = h.XDisplayLabels;
h.XDisplayLabels = repmat(' ',size(cdl,1), size(cdl,2));
cdly = h.YDisplayLabels;
h.YDisplayLabels = repmat(' ',size(cdly,1), size(cdly,2));
h.title('Wizualizacja szybkości znajdowania pierwiastków metodą Newtona')
grid off;
toc
end