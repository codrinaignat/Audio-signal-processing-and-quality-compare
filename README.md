# Audio-signal-processing-and-quality-compare

Requirements for the project:
- generate a Matlab function for downsampling a signal by a factor of 6 using decimation and custom-generated filters. Strive for lowest complexity and best quality;
- upgrade the function to allow downsampling by any integer factor;
- generate a Matlab function for upsampling a signal by a factor of 2 using interpolation (or insertion of specific values) and custom-generated filters;
- upgrade the function to allow upsampling by any integer factor;
- Record at least 2 instances of human speech (male and female) at Fs=48kHz (or upsample them from Fs=44.1kHz, using the Matlab built-in resampling function). Preferably, they should contain loud, clear speech with minimal background noise. Create the 8kHz versions of the signals with the generated downsampling function. Then create 16kHz versions of the signals by upsampling the 8kHz versions with the generated upsampling function.
- Evaluate the quality of the 8kHz and 16kHz versions of the signals using PESQ or any other quality algorithm.
- 
