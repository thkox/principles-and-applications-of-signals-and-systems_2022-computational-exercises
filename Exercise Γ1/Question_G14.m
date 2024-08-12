clc
clear
%Θεόδωρος Κοξάνογλου P20094
dt = 0.001;
t_max = 10;
t = -t_max:dt:t_max;
%Αρχικό Σήμα
x = cos(100*pi*t) + cos(200*pi*t) + sin(500*pi*t); 

% Περίοδο Δειγματοληψίας ίση με την περίδο του ερωτήματος Γ.1.1
Ts1 = 0.002;
% Περίοδο Δειγματοληψίας μικρότερη από την περίδο του ερωτήματος Γ.1.1
Ts2 = 0.0002;
t1 = -t_max:Ts1:t_max;
t2 = -t_max:Ts2:t_max;
Nmax1 = t_max/Ts1; 
Nmax2 = t_max/Ts2;
h1 = (-Nmax1:1:Nmax1);
h2 = (-Nmax2:1:Nmax2);
%Aνακατασκευασμένο σήμα
Xs1 = cos(100*pi*h1*Ts1) + cos(200*pi*h1*Ts1) + sin(500*pi*h1*Ts1);
Xs2 = cos(100*pi*h2*Ts2) + cos(200*pi*h2*Ts2) + sin(500*pi*h2*Ts2);
%Δημιουργία Vector για αποθήκευση των δειγμάτων του ανακατασκευασμένου
%σήματος
x1 = zeros(1,length(t));
x2 = zeros(1,length(t));

for k=1:1:length(t)
    x1(k)=Xs1*sinc((t(k)-h1*Ts1)/Ts1)';
    x2(k)=Xs2*sinc((t(k)-h2*Ts2)/Ts2)';
end
figure ('Name','Ανακατασκευασμένο σήμα με Ts1=0.002s και Ts2=0.0002s');
hold on;
%Αρχικό Σήμα
plot(t ,x ,'-r', 'LineWidth', 1, 'Color', "blue");
%Δείγματα ανακατασκευασμένου Σήματος
plot(t, x1, '*b', 'LineWidth', 1.5, 'Color', "red");
plot(t, x2, '*b', 'LineWidth', 1.8, 'Color', "yellow");
xlabel('-10 \leq t \leq +10');
ylabel('x1(t) και x2(t)');
grid on
%Αιμίλιος Κουπάς Δανάς Π20100