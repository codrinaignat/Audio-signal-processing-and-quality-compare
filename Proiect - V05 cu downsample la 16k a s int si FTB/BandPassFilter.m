function BPF = BandPassFilter (Ft1, Ft2 , y, Fs)
N = 5000; %ordinul filtrului
h = zeros(1,N);
    for n=-(N-1)/2 : (N-1)/2
        h(n+(N-1)/2 +1)=h(n+(N-1)/2+1)+(2*Ft2/Fs)*sinc(2*n*Ft2/Fs)-(2*Ft1/Fs)*sinc(2*n*Ft1/Fs);
    end
BPF = conv(y,h);
end