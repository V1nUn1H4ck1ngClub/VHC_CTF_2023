from scipy.io.wavfile import read as wavread
samplerate1, x1 = wavread("ringtone.wav")
samplerate2, x2 = wavread("seseragi-kane.wav")

# get difference

for i in range(len(x1)):
    diff = x1[i] - x2[i]
    if diff.any():
        print(chr(diff[0]+diff[1]), end="")
        

# ringtone.wav can be found in uploading task to files.fm 
# seseragi-kane.wav can be found in https://hassyaberu.com/rosen/seseragi-kane.wav

