% Metodo de Jacobi opera iterando en una matriz A y un vector b.
%              ***Este programa NO pivotea ***
% Para resolverla se supone una matriz bien condicionada con n ecuaciones 
% y n incognitas
clear all, clc
A= input('Introduzca la matriz de coeficientes = ');
% matrix A % vector b
b=input('Introduzca la matriz de las constantes[0;8;7;3]= '); 
s=size(A); % Obtenemos no de filas y columnas en A
rows=s(1); % numero de filas en A
cols=s(2); % numero de columnas en A
S=zeros(size(A));
for i=1:cols;
    S(i,i)=A(i,i);
end
T=S-A;
x=zeros(size(b)); % suposici�n inicial de x1, x2 y x3
xnew=zeros(size(b)); % Comienza la iteraci�n
for it=1:15
    for i=1:cols
        xnew(i)=b(i);
for j=1:rows
    xnew(i)=xnew(i)+T(i,j)*x(j);
end
xnew(i)=xnew(i)/S(i,i);
    end
 x=xnew;
end
disp('*****************************************************')
disp('   SOLUCI�N DEL SISTEMA DE ECUACIONES LINEALES       ')
fprintf('     iteraci�n final n�mero %i \n Soluci�n:',it) 
fprintf(' \n x1=%2.5f\n',x(1))
fprintf(' x2=%2.5f\n',x(2))
fprintf(' x3=%2.5f\n',x(3))
disp('*************************************************************') 