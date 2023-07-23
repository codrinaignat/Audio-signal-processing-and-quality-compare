clear; clc; 

ref = 'OrigTo16k.wav' 
test = 'Upsampled_signal.wav' 
[odg, movb] = PQevalAudio_fn(ref, test)
