function y3 = myUpsamplingFunction(y2,Fs_up,factor_up)
y3 = zeros(1,2*length(y2));   
    for i = 1:length(y2)
%         y3(i*2)=y2(i);
%         y3(i*2-1)=y2(i);
        for j = 1:factor_up 
            y3(i*factor_up - j + 1)=y2(i); %daca nu puneam 1, as fi ajuns la zero iar in matlab nu pot indexa de la zero
        end
    end
end