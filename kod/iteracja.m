function [index] = iteracja(x,a,eps,n)
%Funkcja zwraca ilość iteracji równania rekurencyjnego metody Newtona
%potrzebnych do osiągnięcia miejsca zerowego z daną dokładnością i limitem. Przyjmuje
%następujące argumenty:
%x - punkt, dla którego liczymy liczbę iteracji;
%a - współczynniki kolejnych wielomianów Legendre'a;
%Opcjonalne argumenty:
%eps - dokładność, domyślnie 10e-6;
%n - maksymalna liczba iteracji, domyślnie 30.
%Funkcja zwraca:
%index - liczba iteracji potrzebna do osiągnięcia miejsca zerowego. W
%przypadku, gdy metoda Newtona jest rozbieżna dla danego punktu, za liczbę
%iteracji przyjmuje się n.
if nargin == 2
    eps = 10^(-6);
    n = 30;
end    
previous =  x;
for i=1:n
   nowa=metoda_newtona(previous,a);
   if abs(nowa-previous)<eps
       index = i;
       return
   end
   previous = nowa;
end
index = n;
end