function [w,p] = wielomiany(x,n)
%Funkcja służy do obliczenia wartości n-tego wielomianu Legendre'a i jego
%pochodnej w punkcie x. Przyjmuje następujące argumenty:
%x - punkt, dla którego liczymy wartość wielomianu i jego pochodną;
%n - n-ty wielomian Legrende'a.
%Funkcja zwraca:
%w - wartość n-tego wielomianu Legendre'a w punkcie x;
%p - wartość pochodnej w tym punkcie.
    if n==0
        w = 1;
        p=0;
        return
    end
    if n==1
        w = x;
        p = 1;
        return
    end
    [w1,p1]=wielomiany(x,n-1);
    [w2,p2]=wielomiany(x,n-2);
    w = (2*n-1)/n*x*w1-(n-1)/n*w2;
    p = (2*n-1)/n*(w1+x*p1)-(n-1)/n*p2;
end