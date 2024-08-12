clc
clear
%Θεόδωρος Κοξάνογλου Π20094
n = 150; 
x=linspace(-75,75,n);
y=1./((x-0.5).^2+1);
z= fft(y);
padsize = 28/2;
 
if mod(length(z),2)
    zp = ifftshift([zeros(1,padsize) fftshift(z) zeros(1,padsize)]);
else
    zp = fftshift(z);
    zp(1) = zp(1)/2;
    zp(end+1) = zp(1);
    zp = ifftshift ([zeros(1,padsize) zp zeros(1,padsize-1)]);
end
figure ('Name','Συνάρτηση fft() AND ifft()');
xp = linspace (x(1), x(end), length(zp));
yp = ifft(zp)/length(z)*length(zp);
%Αιμίλιος Κουρπάς Δανάς Π20100 
hold on
plot(xp, yp, '-r', 'LineWidth', 3, 'Color','green');
plot(x, y, '-b', 'LineWidth', 1.5, 'Color', 'blue');
grid on