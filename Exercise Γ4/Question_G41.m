clc
clear
%Θεόδωρος Κοξάνογλου P20094
image = 'mickey.jpg';
num_coeff = 2000; %Αριθμός Συντελεστή -> πόσες φορές επανάληψη/συμπίεση
array = imread(image);
[~, ~, p] = size(array); %Αποθήκευση εικόνας σε array

if p == 3
    array = rgb2gray(array); %Η είκονα θα γίνει ασπρόμαυρή
end

dbl = double(array);  %Μετατρέπουμε την εικόνα σε μορφή double       
dft = dct2(dbl);  %Διακριτός Μετασχηματισμός            
sqr = (dft).^2; %Υπολογίζουμε το τετράγωνο του μετασχηματισμού             
sqr = sqr(:);
[~,index] = sort(sqr); %Τοποθετούμε τις σειρές σε αύξουσα σειρά
index = flipud(index);
compressed_dft = zeros(size(dbl));

for i = 1:num_coeff
    compressed_dft(index(i)) = dft(index(i));
end
%Αιμίλιος Κουπάς Δανάς Π20100
output = idct2(compressed_dft); %Ξαναμετατρέπουμε την εικόνα για την προβάλλουμε
output = uint8(output);
imwrite(output, 'mickeyCompressed.jpg'); %Αποθηκεύουμε το τελικό αποτέλεσμα
subplot 121; imshow(array); title('Before');
subplot 122; imshow(output); title('After');