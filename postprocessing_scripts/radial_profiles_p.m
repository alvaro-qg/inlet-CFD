clc
clear all
format long

m=[0.302,0.271,0.235,0.194,0.143,0.106,0.074];
x=[0.0075,0.1,0.1295,0.16,0.18];
M=zeros(1001,1+(length(x)*length(m)));
cont=1;

% massflow = 0.271
cd '"path"\perfiles_correlaciones\0.271'
suma=0;
for i=1:5
 nombre = ['corte' '_' num2str(i) '.csv'];
 T = readtable(nombre,'HeaderLines',0,'Delimiter',',');
 A = table2array(T);
 M(:,1)=A(:,2);
 M(:,cont+i)=1.225*A(:,7);
 suma=suma+1;
end 
cont=cont+suma;

% massflow = 0.235
cd '"path"\perfiles_correlaciones\0.235'
suma=0;
for i=1:5
 nombre = ['corte' '_' num2str(i) '.csv'];
 T = readtable(nombre,'HeaderLines',0,'Delimiter',',');
 A = table2array(T);
 M(:,1)=A(:,2);
 M(:,cont+i)=1.225*A(:,7);
 suma=suma+1;
end 
cont=cont+suma;

% massflow = 0.194
cd '"path"\perfiles_correlaciones\0.194'
suma=0;
for i=1:5
 nombre = ['corte' '_' num2str(i) '.csv'];
 T = readtable(nombre,'HeaderLines',0,'Delimiter',',');
 A = table2array(T);
 M(:,1)=A(:,2);
 M(:,cont+i)=1.225*A(:,7);
 suma=suma+1;
end 
cont=cont+suma;

% massflow = 0.302
cd '"path"\perfiles_correlaciones\0.302'
suma=0;
for i=1:5
 nombre = ['corte' '_' num2str(i) '.csv'];
 T = readtable(nombre,'HeaderLines',0,'Delimiter',',');
 A = table2array(T);
 M(:,1)=A(:,2);
 M(:,cont+i)=1.225*A(:,7);
 suma=suma+1;
end 
cont=cont+suma;

% massflow = 0.143
cd '"path"\perfiles_correlaciones\0.143'
suma=0;
for i=1:5
 nombre = ['corte' '_' num2str(i) '.csv'];
 T = readtable(nombre,'HeaderLines',0,'Delimiter',',');
 A = table2array(T);
 M(:,1)=A(:,2);
 M(:,cont+i)=1.225*A(:,7);
 suma=suma+1;
end 
cont=cont+suma;

% massflow = 0.106
cd '"path"\perfiles_correlaciones\0.106'
suma=0;
for i=1:5
 nombre = ['corte' '_' num2str(i) '.csv'];
 T = readtable(nombre,'HeaderLines',0,'Delimiter',',');
 A = table2array(T);
 M(:,1)=A(:,2);
 M(:,cont+i)=1.225*A(:,7);
 suma=suma+1;
end 
cont=cont+suma;

% massflow = 0.074
cd '"path"\perfiles_correlaciones\0.074'
suma=0;
for i=1:5
 nombre = ['corte' '_' num2str(i) '.csv'];
 T = readtable(nombre,'HeaderLines',0,'Delimiter',',');
 A = table2array(T);
 M(:,1)=A(:,2);
 M(:,cont+i)=1.225*A(:,7);
 suma=suma+1;
end 
cont=cont+suma;


cd '"path"\perfiles_correlaciones'
csvwrite('perfil_radial_p.csv',M)