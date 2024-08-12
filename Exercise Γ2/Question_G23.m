clc
clear
%Θεόδωρος Κοξάνογλου Π20094
%  ASCII K = 75 
asc = 0:75:825;
nums = [325 -5 -125 -70 215 730 1175 1425 1525 1375 1075 725];
figure ('Name' , 'Αναπαράσταση Περιοδικού Σήματος FFT');
plot (asc, nums, 'ro', 'LineWidth', 2, 'Color', 'blue');
xlim([0 825]);
xlabel('Degrees');
ylabel('Minutes');
title('{\bf SMT}'); 
grid on
d = fft(nums);
m = length(nums);
M = floor((m+1)/2);
a0 = d(1)/m;
an = 2 * (real(d(2:M))/m);
a6 = d(M+1)/m;
bn = -2*imag(d(2:M))/m;
hold on
x = 0:0.001:825;
n = 1:length(an);
y = a0 + an * cos(2* pi * n' * x/900) + bn * sin(2 * pi * n' * x/900) + a6 * cos(2 * pi * 6' * x/900);
plot(x, y, 'LineWidth', 1, 'Color', 'green');
legend('Δείγματα', 'DFT', 'Θέση', 'NW');
%Αιμίλιος Κουρπάς Δανάς Π20100