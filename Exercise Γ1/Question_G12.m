clc
clear
%Θεόδωρος Κοξάνογλου P20094
dt = 0.001;
t_min = 10;
t_max = 10;
t = -t_min:dt:t_max;
x = cos(100*pi*t) + cos(200*pi*t) + sin(500*pi*t);
%Αναπαράσταση Αρχικού Σήματος
figure('Name','Αναπαράσταση Αρχικού Σήματος');
plot(t,x,'-r','LineWidth',1,'Color',"blue");
xlabel('-10 \leq t \leq +10');
ylabel('x(t)');
grid on
%Αιμίλιος Κουπάς Δανάς Π20100


