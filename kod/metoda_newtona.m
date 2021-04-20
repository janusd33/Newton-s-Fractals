function [value] = metoda_newtona(x,a)
%Funkcja oblicza wartość metody Newtona w punkcie x dla wielomianu 
%o współczynnikach a w bazie Legendre'a. Przyjmuje
%następujące argumenty:
%x - punkt, dla którego liczymy metodę Newtona;
%a - współczynniki kolejnych wielomianów Legendre'a;
%Funkcja zwraca:
%value - punkt, do którego doprowadzi nas metoda Newtona z punktu x.
[wartosc2, wartosc_pochodnej]=wartosc(x,a);
value = x-wartosc2/wartosc_pochodnej;
end