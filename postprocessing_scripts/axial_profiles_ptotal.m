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
 M(:,cont+i-5)=(1.225*A(:,7))+ 0.5*((A(:,4).^2)+(A(:,5).^2));
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
 M(:,cont+i-5)=(1.225*A(:,7))+ 0.5*((A(:,4).^2)+(A(:,5).^2));
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
 M(:,cont+i-5)=(1.225*A(:,7))+ 0.5*((A(:,4).^2)+(A(:,5).^2));
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
 M(:,cont+i-5)=(1.225*A(:,7))+ 0.5*((A(:,4).^2)+(A(:,5).^2));
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
 M(:,cont+i-5)=(1.225*A(:,7))+ 0.5*((A(:,4).^2)+(A(:,5).^2));
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
 M(:,cont+i-5)=(1.225*A(:,7))+ 0.5*((A(:,4).^2)+(A(:,5).^2));
 suma=suma+1;
end 
cont=cont+suma;

cd '"path"\perfiles_correlaciones'
csvwrite('perfil_axial_ptotal.csv',M)