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
% Περίοδο Δειγματοληψίας μεγαλύτερη από την περίδο του ερωτήματος Γ.1.1
Ts3 = 0.02;
t1 = -t_max:Ts1:t_max;
t2 = -t_max:Ts2:t_max;
t3 = -t_max:Ts3:t_max;
Nmax1 = t_max/Ts1; 
Nmax2 = t_max/Ts2;
Nmax3 = t_max/Ts3;
h1 = (-Nmax1:1:Nmax1);
h2 = (-Nmax2:1:Nmax2);
h3 = (-Nmax3:1:Nmax3);
%Aνακατασκευασμένο σήμα
Xs1 = cos(100*pi*h1*Ts1) + cos(200*pi*h1*Ts1) + sin(500*pi*h1*Ts1);
Xs2 = cos(100*pi*h2*Ts2) + cos(200*pi*h2*Ts2) + sin(500*pi*h2*Ts2);
Xs3 = cos(100*pi*h3*Ts3) + cos(200*pi*h3*Ts3) + sin(500*pi*h3*Ts3);
%Δημιουργία Vector για αποθήκευση των δειγμάτων του ανακατασκευασμένου
%σήματος
x1 = zeros(1,length(t));
x2 = zeros(1,length(t));
x3 = zeros(1,length(t));

for k=1:1:length(t)
    x1(k)=Xs1*sinc((t(k)-h1*Ts1)/Ts1)';
    x2(k)=Xs2*sinc((t(k)-h2*Ts2)/Ts2)';
    x3(k)=Xs3*sinc((t(k)-h3*Ts3)/Ts3)';
end
figure ('Name','Ανακατασκευασμένο σήμα με Ts1=0.002s, Ts2=0.0002s και Ts3=0.02s');
hold on;
%Αρχικό Σήμα
plot(t ,x ,'-r', 'LineWidth', 1, 'Color', "blue");
%Δείγματα ανακατασκευασμένου Σήματος
plot(t, x1, '*b', 'LineWidth', 1.3, 'Color', "red");
plot(t, x2, '*b', 'LineWidth', 1.6, 'Color', "yellow");
plot(t, x3, '*b', 'LineWidth', 1.9, 'Color', "green");
xlabel('-10 \leq t \leq +10');
ylabel('x1(t), x2(t) και x3(t)');
grid on
%Αιμίλιος Κουπάς Δανάς Π20100