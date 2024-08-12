clc
clear
%Θεόδωρος Κοξάνογλου P20094
dt = 0.001;
t_max = 10;
t1 = -t_max:dt:t_max;
%Αρχικό Σήμα
x1 = cos(100*pi*t1) + cos(200*pi*t1) + sin(500*pi*t1); 

% Περίοδο Δειγματοληψίας
Ts = 0.002; 
t2 = -t_max:Ts:t_max;
Nmax = t_max/Ts; 
h1 = (-Nmax:1:Nmax);
%Aνακατασκευασμένο σήμα
Xs = cos(100*pi*h1*Ts) + cos(200*pi*h1*Ts) + sin(500*pi*h1*Ts);
%Δημιουργία Vector για αποθήκευση των δειγμάτων του ανακατασκευασμένου
%σήματος
x2 = zeros(1,length(t1));

for k=1:1:length(t1)
    x2(k)=Xs*sinc((t1(k)-h1*Ts)/Ts)';
end
figure ('Name','Ανακατασκευασμένο σήμα με Ts=0.002s');
hold on;
%Αρχικό Σήμα
plot(t1 ,x1, '-r', 'LineWidth', 1, 'Color', "blue");
%Δείγματα ανακατασκευασμένου Σήματος
plot(t1, x2, '*b', 'LineWidth', 1.5, 'Color', "red");
xlabel('-10 \leq t \leq +10');
ylabel('x2(t)');
grid on
%Αιμίλιος Κουπάς Δανάς Π20100
