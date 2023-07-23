function LPF = LowPassFilter (Ft, y, Fs)
N = 5000; %ordinul filtrului
h = zeros(1,N);
for n=-(N-1)/2 : (N-1)/2
            h(n+(N-1)/2 +1)=h(n+(N-1)/2+1)+(2*Ft/Fs)*sinc(2*n*Ft/Fs);
end
LPF = conv(y,h);
end