A=10; % amplitudinea semnalului
f=160000; % frecventa semnalului
faza_i=0; % faza initiala a semnalului
R=1000; % valoarea initiala a rezistentei
C=1*10^(-9); % valoarea initiala a capacitatii
frecventa=logspace(1,6,100); %frecventa semnalului (vector)
w=2*pi*frecventa; %omega (frecventa unghiulara)
ft= 1/(2*pi*R*C);  %frecventa de taiere
num= 1i*R*C*w; % numarator formula h
den= 1+ 1i*R*C*w; %numitor formula h
p=100;
fts(A,f,faza_i,R,C);
grafic(frecventa,ft,num,den,p);