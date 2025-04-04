function fts(A,f,faza_i,R,C)
figure('Name','FTS',...
    'Units', 'normalized',...
    'Position', [0.1,0.1,0.85,0.75],...
    'NumberTitle', 'off','color','#BCD4E6');

%%%%%%%%%%%%%% Titlu %%%%%%%%%%%%%%%%%%%%%

uicontrol('style', 'text',...
    'units','normalized',...
    'position',[0.03, 0.93, 0.54 , 0.05]',...
    'string', 'Filtrul Trece Sus cu RC',...
    'backgroundcolor', '#7CB9E8',...
    'fontsize', 15);

%%%%%%%%%%%%%%%%%%%%%% Calcule %%%%%%%%%%%%%%%

T=1./f;                                  % calculam perioada
t=0:T/100:3*T;                           % incarcam vectorul timp
A0= R/(sqrt(R*R+C*C));                   % atenuarea (castigul)
faza= atan(1/(2*pi*R*C*f));              % defazajul
h=(2*pi*R*C*f)/(sqrt(1+(2*pi*R*C*f)^2)); %functia de transfer

%%%%%%%%%%%%%%%%%%%%%% Buton reset %%%%%%%%%%%%%%%

uicontrol('Style','pushbutton',...
 'Units','normalized',...
 'Position',[0.03 0.85 0.08 .05],...
 'string','RESET',...
 'backgroundcolor', '#7CB9E8',...
 'Callback','close, fts(10,160000,0,1000,1*10^(-9)),grafic(logspace(1,6,100),1/(2*pi*R*C),1i*R*C*w,1+ 1i*R*C*w,100)'); %reapelam functia cu valorile initiale
 
%%%%%%%%%%%%%%%%%%%%%% Buton close %%%%%%%%%%%%%%%

uicontrol('Style','pushbutton',...
 'Units','normalized',...
 'Position',[0.15 0.85 0.08 .05],...
 'String','CLOSE',...
 'backgroundcolor', '#7CB9E8',...
 'Callback','close');


%%%%%%%%%%%%%%%%%%%%%% Grupuri %%%%%%%%%%%%%%%

G1=uibuttongroup('Title','Valori date',...
 'FontSize',15,...
 'TitlePosition','centertop',...
 'Tag','valori',...
 'Position',[0.03, 0.45, 0.22 , 0.35]); 

G2=uibuttongroup('Title','Valori calculate',...
 'FontSize',15,...
 'TitlePosition','centertop',...
 'Tag','calcule',...
 'Position',[0.03, 0.07, 0.22 , 0.35]); 

%%%%%%%%%%%% Butoane valori date tip text %%%%%%%%%%%%%%%%%%

uicontrol('style', 'text',...
    'units','normalized',...
    'position',[0.1, 0.75, 0.3, 0.15]',...
    'string', 'A',...
    'parent', G1,...
    'backgroundcolor', 'w',...
    'fontsize', 15);
uicontrol('style', 'text',...
    'units','normalized',...
    'position',[0.1, 0.55, 0.3, 0.15]',...
    'string', 'R',...
    'parent', G1,...
    'backgroundcolor', 'w',...
    'fontsize', 15);
uicontrol('style', 'text',...
    'units','normalized',...
    'position',[0.1, 0.35, 0.3, 0.15]',...
    'string', 'C',...
    'parent', G1,...
    'backgroundcolor', 'w',...
    'fontsize', 15);
uicontrol('style', 'text',...
    'units','normalized',...
    'position',[0.1, 0.15, 0.3, 0.15]',...
    'string', 'f',...
    'parent', G1,...
    'backgroundcolor', 'w',...
    'fontsize', 15);

%%%%%%%%%%% Butoane valori date tip edit %%%%%%%%%%%%%

uicontrol('style', 'edit',...
    'units','normalized',...
    'position',[0.45, 0.75, 0.5, 0.15]',...
    'string', A,...
    'parent', G1,...
    'backgroundcolor', 'w',...
    'fontsize', 15,...
    'callback', 'A=str2num(get(gco,"string")),close, fts(A,f,faza_i,R,C),grafic(frecventa,ft,num,den,p)');
uicontrol('style', 'edit',...
    'units','normalized',...
    'position',[0.45, 0.55, 0.5, 0.15]',...
    'string', R,...
    'parent', G1,...
    'backgroundcolor', 'w',...
    'fontsize', 15,...
    'callback', 'R=str2num(get(gco,"string")),close, fts(A,f,faza_i,R,C),grafic(frecventa,ft,num,den,p)');
uicontrol('style', 'edit',...
    'units','normalized',...
    'position',[0.45, 0.35, 0.5, 0.15]',...
    'string', C,...
    'parent', G1,...
    'backgroundcolor', 'w',...
    'fontsize', 15,...
    'callback', 'C=str2num(get(gco,"string")),close, fts(A,f,faza_i,R,C),grafic(frecventa,ft,num,den,p)');
uicontrol('style', 'edit',...
    'units','normalized',...
    'position',[0.45, 0.15, 0.5, 0.15]',...
    'string', f,...
    'parent', G1,...
    'backgroundcolor', 'w',...
    'fontsize', 15,...
    'callback', 'f=str2num(get(gco,"string")),close, fts(A,f,faza_i,R,C),grafic(frecventa,ft,num,den,p)');

%%%%%%%%%%%% Butoane valori calculate tip text %%%%%%%%%%%%%%%%%%

uicontrol('style', 'text',...
    'units','normalized',...
    'position',[0.1, 0.75, 0.3, 0.15]',...
    'string', 'tau',...
    'parent', G2,...
    'backgroundcolor', 'w',...
    'fontsize', 15);
uicontrol('style', 'text',...
    'units','normalized',...
    'position',[0.1, 0.55, 0.3, 0.15]',...
    'string', 'ft',...   % frecventa de taiere
    'parent', G2,...
    'backgroundcolor', 'w',...
    'fontsize', 15);
uicontrol('style', 'text',...
    'units','normalized',...
    'position',[0.1, 0.35, 0.3, 0.15]',...
    'string', 'defazaj',...  % defazajul
    'parent', G2,...
    'backgroundcolor', 'w',...
    'fontsize', 15);
uicontrol('style', 'text',...
    'units','normalized',...
    'position',[0.1, 0.15, 0.3, 0.15]',...
    'string', 'castig',...   % atenuare ( castig )
    'parent', G2,...
    'backgroundcolor', 'w',...
    'fontsize', 15);

%%%%%%%%%%% Butoane calcul automat %%%%%%%%%%%%%
uicontrol('style', 'text',...
    'units','normalized',...
    'position',[0.45, 0.75, 0.5, 0.15]',...
    'string', R*C,...   % tau
    'parent', G2,...
    'backgroundcolor', 'w',...
    'fontsize', 15);
uicontrol('style', 'text',...
    'units','normalized',...
    'position',[0.45, 0.55, 0.5, 0.15]',...
    'string', 1/(2*pi*R*C),...   %frecventa de taiere
    'parent', G2,...
    'backgroundcolor', 'w',...
    'fontsize', 15);
uicontrol('style', 'text',...
    'units','normalized',...
    'position',[0.45, 0.35, 0.5, 0.15]',...
    'string', faza,...     % defazajul
    'parent', G2,...
    'backgroundcolor', 'w',...
    'fontsize', 15);
uicontrol('style', 'text',...
    'units','normalized',...
    'position',[0.45, 0.15, 0.5, 0.15]',...
    'string', A0,...     % atenuarea
    'parent', G2,...
    'backgroundcolor', 'w',...
    'fontsize', 15);

%%%%%%%%%%% Mesaj de eroare %%%%%%%%%%%%%

if (A<0 || f<0 || R<0 || C<0)
   close;
   msgbox('COMPONENTA NU POATE FII NEGATIVA');
    fts(10,160000,0,1000,1*10^(-9));
    grafic(logspace(1,6,100),1/(2*pi*R*C),1i*R*C*w,1+ 1i*R*C*w,100);
end

if (A==0 || f==0 || R==0 || C==0)
    close;
    msgbox('COMPONENTA NU POATE FII 0');  
    fts(10,160000,0,1000,1*10^(-9));
    grafic(logspace(1,6,100),1/(2*pi*R*C),1i*R*C*w,1+ 1i*R*C*w,100);
end


%%%%%%%%%%%%%% Subploturi %%%%%%%%%%%%%%%%%%%%%%

x=A*sin(2*pi*f*t+faza_i);           % tensiune de intrare
y=A*h*sin(2*pi*t*f+faza_i+faza);    % tensiune de iesire

%%%%%%%%%% Graficul tensiunii de intrare fata de tensiunea de iesire%%%%%

subplot('position', [0.32, 0.07, 0.25, 0.4]);
plot(t,x);       % plotam tensiunea de intrare
grid on;
hold on;
plot(t,y);       % plotam tensiunea de iesire
legend('V in', 'V out');
xlabel('Timpul');
ylabel('Amplitudinea');
title('Tensiunea de intrare - iesire');

%%%%%%%%%% Imagine cu circuitul %%%%%%%%%%
subplot('position', [0.32, 0.5, 0.25, 0.43]);
poza=imread('fvm4.PNG');
imshow(poza);

end

