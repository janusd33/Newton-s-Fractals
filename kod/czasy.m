%Badanie n:
%a=4, eps=10e-6, max=30
n=[50,100,200,500,1000];
t1=[(0.309826+0.546599+0.234276)/3,
    (0.502084+0.595124+0.480132)/3,
    (1.626078+2.075998+1.736937)/3,
    (8.217032+8.679551+9.054188)/3,
    (33.437883+31.730404+33.701714)/3];

%Badanie a:
%n=500,eps=10e-6,max=30
a=[1,2,4,6,8];
t2=[(4.764125+5.217553+5.509791)/3,
    (3.488033+3.620112+3.594541)/3,
    (8.697488+8.477213+9.440765)/3,
    (29.595333+28.334978+30.265915)/3,
    (104.852526+106.513938+102.263780)/3];

%Badanie eps:
%a=4,n=500,max=30
eps=[10^(-1),10^(-2),10^(-4),10^(-6),10^(-8)];
t3=[(6.478709+6.984309+6.902411)/3,
    (7.846339+8.035020+8.184581)/3,
    (8.596417+9.594208+8.168919)/3,
    (8.372601+8.965504+8.160550)/3,
    (8.982617+8.938833+8.158607)/3];

%Badanie max:
%a=4,n=500,eps=10e-6
max=[10,20,30,50,100];
t4=[(7.269521+6.312689+6.974347)/3,%bardzo niedokładny wykres dla max=10
    (7.406456+7.321851+7.435710)/3,
    (9.395310+8.444788+9.610752)/3,
    (7.213632+7.520223+7.423990)/3,%mniej wyraźny wykres dla max=50
    (7.764374+7.831111+7.083370)/3];

subplot(2,2,1),plot(n,t1,'b');
title('Zależność czasu od liczby punktów');
xlabel('n'), ylabel('czas');
%axis([0 1000 0 100]);
grid on
subplot(2,2,2),plot(a,t2,'r');
title('Zależność czasu od stopnia wielomianu');
xlabel('a'), ylabel('czas');
%axis([1 8 0 100]);
grid on
subplot(2,2,3),plot(eps,t3,'g');
title('Zależność czasu od dokładności obliczeń');
xlabel('eps'), ylabel('czas');
%axis([10^(-8) 10^(-1) 0 100]);
grid on
subplot(2,2,4),plot(max,t4,'black');
title('Zależność czasu od maksymalnej liczby iteracji');
xlabel('max'), ylabel('czas');
%axis([0 100 0 100]);
grid on