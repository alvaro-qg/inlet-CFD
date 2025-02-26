clc
clear all
format long

m=[0.302,0.271,0.235,0.194,0.143,0.106,0.074];
r=[0,0.015,0.03,0.045,0.053];
M=zeros(1001,1+(length(r)*length(m)));
cont=1;

% massflow = 0.271
cd '"path"\perfiles_correlaciones\0.271'
suma=0;
for i=6:10
 nombre = ['corte' '_' num2str(i) '.csv'];
 T = readtable(nombre,'HeaderLines',0,'Delimiter',',');
 A = table2array(T);
 M(:,1)=A(:,1);
 M(:,cont+i-5)=1.225*A(:,7);
 suma=suma+1;
end 
cont=cont+suma;

% massflow = 0.235
% cd '"path"\perfiles_correlaciones\0.235'
suma=0;
for i=6:10
 nombre = ['corte' '_' num2str(i) '.csv'];
 T = readtable(nombre,'HeaderLines',0,'Delimiter',',');
 A = table2array(T);
 M(:,1)=A(:,1);
 M(:,cont+i-5)=1.225*A(:,7);
 suma=suma+1;
end 
cont=cont+suma;

% massflow = 0.194
cd '"path"\perfiles_correlaciones\0.194'
suma=0;
for i=6:10
 nombre = ['corte' '_' num2str(i) '.csv'];
 T = readtable(nombre,'HeaderLines',0,'Delimiter',',');
 A = table2array(T);
 M(:,1)=A(:,1);
 M(:,cont+i-5)=1.225*A(:,7);
 suma=suma+1;
end 
cont=cont+suma;

% massflow = 0.302
cd '"path"\perfiles_correlaciones\0.302'
suma=0;
for i=6:10
 nombre = ['corte' '_' num2str(i) '.csv'];
 T = readtable(nombre,'HeaderLines',0,'Delimiter',',');
 A = table2array(T);
 M(:,1)=A(:,1);
 M(:,cont+i-5)=1.225*A(:,7);
 suma=suma+1;
end 
cont=cont+suma;

% massflow = 0.143
cd '"path"\perfiles_correlaciones\0.143'
suma=0;
for i=6:10
 nombre = ['corte' '_' num2str(i) '.csv'];
 T = readtable(nombre,'HeaderLines',0,'Delimiter',',');
 A = table2array(T);
 M(:,1)=A(:,1);
 M(:,cont+i-5)=1.225*A(:,7);
 suma=suma+1;
end 
cont=cont+suma;

% massflow = 0.106
cd '"path"\perfiles_correlaciones\0.106'
suma=0;
for i=6:10
 nombre = ['corte' '_' num2str(i) '.csv'];
 T = readtable(nombre,'HeaderLines',0,'Delimiter',',');
 A = table2array(T);
 M(:,1)=A(:,1);
 M(:,cont+i-5)=1.225*A(:,7);
 suma=suma+1;
end 
cont=cont+suma;

% massflow = 0.074
cd '"path"\perfiles_correlaciones\0.074'
suma=0;
for i=6:10
 nombre = ['corte' '_' num2str(i) '.csv'];
 T = readtable(nombre,'HeaderLines',0,'Delimiter',',');
 A = table2array(T);
 M(:,1)=A(:,1);
 M(:,cont+i-5)=1.225*A(:,7);
 suma=suma+1;
end 
cont=cont+suma;


cd '"path"\perfiles_correlaciones'
csvwrite('perfil_axial_p.csv',M)

% tol=1;
% B=100*(1-(M(:,6)./M(:,2)));
% C=find(-B < tol );
% 
% x_tol=M(C(1),1);
% i=1;
% p=1;
% while(i<=length(M(:,1)))
%     if M(i,1)>x_tol
%      D(p,1)=M(i,2)-M(i,6);
%      D(p,2)=M(i,1);
%      p=p+1;
%     end
%     i=i+1;
% end
% 
% % p(r=0) - p(r=r_bel) vs x %
% figure(1)
% plot(D(:,2),D(:,1),'r','LineWidth',2);
% xlabel('x [m]')
% ylabel('Radial pressure difference [Pa]')
% legend('Tolerance < 1%','Location','northeast')
% hold on
% plot(M(:,1),M(:,2)-M(:,6));
% hold off 
% grid on
% 
% figure(2)
% AxesH2 = axes('Ylim', [-21,0], 'YTick', -21:1:0, 'NextPlot', 'add');
% plot(M(C,1),100*(1-(M(C,6)./M(C,2))),'r','LineWidth',2);
% legend('Tolerance < 1%','Location','southeast')
% ylabel('Pressure percentual difference [%]')
% xlabel('x [m]')
% hold on 
% plot(M(:,1),100*(1-(M(:,6)./M(:,2))));
% hold off 
% grid on

%Sonda 1 x=0.14 r=0.0553=r_bellmouth   +/- 0.1 m de error
sonda_1(:,1)=[0.268 0.235 0.194 0.302 0.143 0.106 0.074];

c=1;
i=6;
while(i<=length(M(620,:)))
    sonda_1(c,2)=M(620,i);
    sonda_1(c,3)=M(525,i);
    sonda_1(c,4)=M(715,i);
    c=c+1;
    i=i+5;
end

backup_1=sonda_1(1,:);
backup_2=sonda_1(2,:);
backup_3=sonda_1(3,:);

sonda_1(1,:)=sonda_1(4,:);
sonda_1(2,:)=backup_1;
sonda_1(3,:)=backup_2;
sonda_1(4,:)=backup_3;

f = fopen('sonda1.txt','a');
fprintf(f,'%u %u %u %u \n',[sonda_1(:,1) sonda_1(:,2) sonda_1(:,3) sonda_1(:,4)]');
fclose(f);

% prueba=[0 1 2 3 4 5 6];
% T=load('sonda1.txt');
% f = fopen('sonda1.txt','w');
% T=[T prueba'];
% fmt = '%u %u %u %u %u \n';
% fprintf(f,fmt,[T].');
% fclose(f);


