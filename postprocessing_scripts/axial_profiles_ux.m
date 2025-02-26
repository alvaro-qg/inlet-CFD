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
 M(:,cont+i-5)=A(:,4);
 suma=suma+1;
end 
cont=cont+suma;

% massflow = 0.235
cd '"path"\perfiles_correlaciones\0.235'
suma=0;
for i=6:10
 nombre = ['corte' '_' num2str(i) '.csv'];
 T = readtable(nombre,'HeaderLines',0,'Delimiter',',');
 A = table2array(T);
 M(:,1)=A(:,1);
 M(:,cont+i-5)=A(:,4);
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
 M(:,cont+i-5)=A(:,4);
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
 M(:,cont+i-5)=A(:,4);
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
 M(:,cont+i-5)=A(:,4);
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
 M(:,cont+i-5)=A(:,4);
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
 M(:,cont+i-5)=A(:,4);
 suma=suma+1;
end 
cont=cont+suma;



cd '"path"\perfiles_correlaciones'
csvwrite('perfil_axial_ux.csv',M)

% dif1=M(:,3)-M(:,2);
% dif2=M(:,4)-M(:,2);
% dif3=M(:,5)-M(:,2);
% 
% 
% plot(M(:,1),dif1)
% hold on 
% plot(M(:,1),dif2)
% plot(M(:,1),dif3)
% 
% hold off
% 
% lgd=legend('ux(r=0) - ux(r=0.015)','ux(r=0) - ux(r=0.03)','ux(r=0) - ux(r=0.045)');
% lgd.FontSize = 14;
% xlabel('x [m]')
% ylabel('Ux difference [m/s]')

U_mean=(0.268)/(1.225*pi*(0.056^2));
discrepancy1=M(:,2)/U_mean;
discrepancy2=M(:,3)/U_mean;
discrepancy3=M(:,4)/U_mean;

plot(M(:,1),discrepancy1)
hold on 
 plot(M(:,1),discrepancy2)
 plot(M(:,1),discrepancy3)
hold off
lgd=legend('U_x(r=0)/U_m_e_a_n)','U_x(r=0.03)/U_m_e_a_n','U_x(r=0.045)/U_m_e_a_n','Location','southeast');
lgd.FontSize = 14;
xlabel('x [m]')
ylabel('U_x/U_m_e_a_n')






