function [wartosc, wartosc_pochodnej] = wartosc(x,a)
%Funkcja służy do obliczenia wartości wielomianu i jego pochodnej w punkcie
%x zapisanego w bazie wielomianów Legendre'a. Przyjmuje następujące
%argumenty:
%x - punkt, dla którego liczymy wartość wielomianu i jego pochodną;
%a - współczynniki kolejnych wielomianów Legendre'a.
%Funkcja zwraca:
%w - wartość wielomianu w punkcie x;
%p - wartość pochodnej w tym punkcie.
wartosc=0;
wartosc_pochodnej=0;
for i=1:size(a,2)
    [w,p]=wielomiany(x,i-1);
    wartosc = wartosc + a(i)*w;
    wartosc_pochodnej=wartosc_pochodnej+a(i)*p;
end
end