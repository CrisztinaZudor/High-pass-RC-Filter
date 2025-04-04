function grafic(frecventa,ft,num,den,p)

%%%%%%%%%% Diagrama castig %%%%%%%%%%%%%%%
%%%%%%%%%Modulul functiei de transfer%%%%%%%%%%

h= abs(num./den); %Uout/Uin
gain= 20*log10(h); % calculul castigului in log
phase= 180/pi*(angle(num./den)); %calculul fazei semnalului

set(gcf,'UserData',[frecventa(:) gain(:) phase(:)]);
y= get(gcf, 'UserData');
if~isempty(y)   % verificam daca y nu e gol
    fr=y(1:p,1); %extragerea frecventei (prima coloana)
    g=y(1:p,2);  %extragerea castigului (a 2 a coloana)
    ph=y(1:p,3); %extragerea fazei (a 3 a coloana)
end

subplot('position', [0.65, 0.58, 0.3, 0.35]);
%desenarea valorilor extrase din UserData
semilogx(fr,g,'r',ft,-3,'ob','LineWidth',2);
grid on;
hold on;
xlabel('Frecventa,Hz');
ylabel('Castigul,dB');
title('Modulul functiei de transfer');


%%%%%%%%%% Diagrama faza %%%%%%%%%%%%%%%
%%%%%%%%% Faza functiei de transfer%%%%%%%%%%

subplot('position', [0.65, 0.1, 0.3, 0.35]);
semilogx(fr,ph,'b',ft,45,'ok','LineWidth',2);
grid on;
hold on;
xlabel('Frecventa,Hz');
ylabel('Faza,radiani');
title('Faza functiei de transfer');

end

