clc
clear
%Θεόδωρος Κοξάνογλου P20094
Fs = 8000; %Συχνότητα Δειγματοληψίας
Ts = 1/Fs; %Περίοδος Δειγματοληψίας
Dt = 1; %Διάρκεια κάθε μίας νότας του μουσικού κομματιού
t = 0:Ts:Dt; 
notes = 12; %πλήθος νοτών
%Αιμίλιος Κουπάς Δανάς Π20100
for i = 0:1:(notes-1)
    y = sin(2*pi*220*2^(i/12)*t); %sin(2*p*f*t)
    sound(y,Fs);
    pause(1);
end
