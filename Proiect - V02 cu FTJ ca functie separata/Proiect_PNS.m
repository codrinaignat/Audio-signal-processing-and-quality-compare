clear all
close all 
clc
 
[y,Fs] = audioread('1man.wav');
factor_down = 8;
factor_up = 2;
Fs_down = Fs/factor_down;
Fs_up = Fs_down * factor_up;
 
%afisare semnal original
figure(1)
axaFFT1=linspace(-Fs/2, Fs/2, length(y));
Y=fftshift(abs(fft(y)));
plot(axaFFT1,Y);
title('Spectrul semnalului original');
xlabel('f');
 
figure(2)
window=hamming(512); %%window with size of 512 points
[S,F,T,P] = spectrogram(y,window,256,1024,Fs,'yaxis');
surf(T,F,10*log10(P),'edgecolor','none'); axis tight;view(0,90);
colormap("hot"); %%for the indexed colors, check this in help for black/white
set(gca,'clim',[-80 -30]); %%clim is the limits of the axis colours
xlabel('Time s');
ylabel('Frequency kHz')
title ('Spectrograma semnalului original')
 
%Ft = 4000;
Ft = (Fs/factor_down)/2;
y_filtrat = LowPassFilter (Ft, y, Fs);
 
axaFFT_filtrat=linspace(-Fs/2, Fs/2, length(y_filtrat));
Y_filtrat=fftshift(abs(fft(y_filtrat)));
 
figure(3)
plot(axaFFT_filtrat, Y_filtrat);
title('Spectrul semnalului filtrat');
xlabel('f');
 
y2 = myDownsamplingFunction(y_filtrat,Fs_down,factor_down);
audiowrite('Downsampled_signal.wav',y2,Fs_down);
 
figure(4)
axaFFT1=linspace(-Fs_down/2, Fs_down/2, length(y2));
Y2=fftshift(abs(fft(y2)));
plot(axaFFT1,Y2);
title('Spectrul semnalului decimat');
xlabel('f');
 
figure(5)
window=hamming(512); %%window with size of 512 points
[S,F,T,P] = spectrogram(y2,window,256,1024,Fs_down,'yaxis');
surf(T,F,10*log10(P),'edgecolor','none'); axis tight;view(0,90);
colormap("hot"); %%for the indexed colors, check this in help for black/white
set(gca,'clim',[-80 -30]); %%clim is the limits of the axis colours
xlabel('Time s');
ylabel('Frequency kHz')
title ('Spectrograma semnal Fs = 8kHz')
 
y3 = myUpsamplingFunction(y2,Fs_up,factor_up);
 
figure(6)
axaFFT3=linspace(-Fs_up/2, Fs_up/2, length(y3));
Y3=fftshift(abs(fft(y3)));
plot(axaFFT3,Y3);
title('Spectrul semnalului de 16kHz inainte de filtrare');
xlabel('f');
 
Ft = 4000;
y3_filtered = LowPassFilter(Ft,y3,Fs_up);
audiowrite('Upsampled_signal.wav',y3_filtered,Fs_up);
 
figure(7)
window=hamming(512); %%window with size of 512 points
[S,F,T,P] = spectrogram(y3_filtered,window,256,1024,Fs_up,'yaxis');
surf(T,F,10*log10(P),'edgecolor','none'); axis tight;view(0,90);
colormap(hot); %%for the indexed colors, check this in help for black/white
set(gca,'clim',[-80 -30]); %%clim is the limits of the axis colours
xlabel('Time s');
ylabel('Frequency kHz')
title ('Spectrograma semnal Fs = 16kHz dupa filtrare')
 
figure(8)
axaFFT_upsampled=linspace(-Fs_up/2, Fs_up/2, length(y3_filtered));
Y_upsampled=fftshift(abs(fft(y3_filtered)));
plot(axaFFT_upsampled,Y_upsampled);
title('Spectrul semnalului de 16kHz dupa filtrare');
xlabel('f');
