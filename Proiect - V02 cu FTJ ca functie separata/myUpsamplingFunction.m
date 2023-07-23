function y3 = myUpsamplingFunction(y2,Fs_up,factor_up)
y3 = zeros(1,2*length(y2));   
    for i = 1:length(y2)
        for j = 1:factor_up 
            y3(i*factor_up - j + 1)=y2(i); 
        end
    end
end