# Audio-signal-processing-and-quality-compare

Requirements for the project:
- generate a Matlab function for downsampling a signal by a factor of 6 using decimation and custom-generated filters. Strive for lowest complexity and best quality;
- upgrade the function to allow downsampling by any integer factor;
- generate a Matlab function for upsampling a signal by a factor of 2 using interpolation (or insertion of specific values) and custom-generated filters;
- upgrade the function to allow upsampling by any integer factor;
- Record at least 2 instances of human speech (male and female) at Fs=48kHz (or upsample them from Fs=44.1kHz, using the Matlab built-in resampling function). Preferably, they should contain loud, clear speech with minimal background noise. Create the 8kHz versions of the signals with the generated downsampling function. Then create 16kHz versions of the signals by upsampling the 8kHz versions with the generated upsampling function.
- Evaluate the quality of the 8kHz and 16kHz versions of the signals using PESQ or any other quality algorithm.

The project has 5 versions, as follows:
- V01 - The Low pass filter code is included in the main file. This filter is implemented before downsampling and after also after upsampling. 
- V02 - The Low pass filter code is written as a separate function, this way just being called in the main file, whenever necessary.
- V03 - Starting with this version, I tried to implement methods of verifying, using PEAQ and VISQOL, the perceptual evaluation of the sound quality. So, in this version of the project, I first saved the original sound in the y array, then saved it once more in the OrigTo16k array. Then, I downsampled and upsampled the original sound, y. To the second one, OrigTo16k array, I downsampled it directly to 16kHz Fs, after I filtered it. This way, I compared the signals OrigTo16K and y3_filtered using the perception evaluation algorithms, both having a sample frequency of 16kHz. 
- V04 - In this version I used an upsampling factor of 6, after downsampling the signal to 8kHz Fs, thus the signal has a 48kHz through upsampling and filtering. I did this thing to compare the final signal and the original signal, although the final signal has a 48kHz sample frequency. I compared the files 1man.wav and Upsampled_signal.wav
- V05 - This version has the same approach as V03, with the difference that instead of Low pass filter, I used a band-pass filter, with cutoff freq1 = 30 Hz, cutoff freq2 = 4000Hz. I wanted to see if there is any difference in PEAQ and VISQOL results after eliminating the low frequency components. I used for comparison the files OrigTo16k.wav and Upsampled_signal.wav

Folder structure:
- PEAK - contains the Perceptual Evaluation of Audio Quality standardized algorithm for objectivitely measuring perceived audio quality, NOT implemented by me;
- Folders Proiect V01-V05 contain the versions of the project, detailed above;
- visqol - contains the Virtual Speech Quality Objective Listener algorithm, NOT implemented by me;
- Audio signal processing Resampling.pdf file contains the requirements for this project, mentioned above;
- The files Documentatie proiect PNS_Codrina Ignat.pdf and .docx are both a detailed documentation of the project, in Romanian;
- Linkuri pt proiect.txt is a text file with some reference links for the project.
