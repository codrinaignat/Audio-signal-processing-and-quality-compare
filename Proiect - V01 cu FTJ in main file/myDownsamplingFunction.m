function y2 = myDownsamplingFunction(y_filtrat, Fs_down, factor_down)      
y2 = y_filtrat(1:factor_down:end);
audiowrite('Downsampled_signal.wav',y2,Fs_down);
end