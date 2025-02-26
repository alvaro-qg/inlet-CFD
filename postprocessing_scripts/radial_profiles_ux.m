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
 M(:,cont+i)=A(:,4);
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
 M(:,cont+i)=A(:,4);
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
 M(:,cont+i)=A(:,4);
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
 M(:,cont+i)=A(:,4);
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
 M(:,cont+i)=A(:,4);
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
 M(:,cont+i)=A(:,4);
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
 M(:,cont+i)=A(:,4);
 suma=suma+1;
end 
cont=cont+suma;

cd '"path"\perfiles_correlaciones'
csvwrite('perfil_radial_ux.csv',M)

for i=1:length(M(1,:))-1
 M(length(M(:,1)),i+1)=0;
end

x=[0.0075,0.1,0.1295,0.16,0.18];

v_av=(0.268)/(1.225*pi*(0.056^2));
tol=(3/100)*v_av;
v_max=v_av+tol;
v_min=v_av-tol;

y1 = find(M(:,2)<=v_max & M(:,2)>=v_min); 
y2 = find(M(:,3)<=v_max & M(:,3)>=v_min); 
y3 = find(M(:,4)<=v_max & M(:,4)>=v_min); 
y4 = find(M(:,5)<=v_max & M(:,5)>=v_min); 
y5 = find(M(:,6)<=v_max & M(:,6)>=v_min); 

x1=x(1)*ones(length(M(y1,2)),1);
x2=x(2)*ones(length(M(y2,3)),1);
x3=x(3)*ones(length(M(y3,4)),1);
x4=x(4)*ones(length(M(y4,5)),1);
x5=x(5)*ones(length(M(y5,6)),1);

plot(x1,M(y1,1),'LineWidth',10)
xlim([0 0.2])
xlabel('x')
ylabel('r')
set(gca,'XTick',x, 'XTickLabel',x)
% set(gca,'YTick',[0:0.005:0.056], 'YTickLabel',[0:0.005:0.056])

hold on 
plot(x2,M(y2,1),'LineWidth',10)
plot(x3,M(y3,1),'LineWidth',10)
plot(x4,M(y4,1),'LineWidth',10)
plot(x5,M(y5,1),'LineWidth',10)
hold off

