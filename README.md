# Nodio

**Nodio**는 BBC의 오픈소스 프로젝트 [audiowavefrom](https://github.com/bbc/audiowaveform)이 사전에 설치된 도커 이미지입니다. 아래는 **audiowaveform**의 소개 중 일부 입니다.

> audiowaveform is a C++ command-line application that generates waveform data from either MP3, WAV, FLAC, Ogg Vorbis, or Opus format audio files. Waveform data can be used to produce a visual rendering of the audio, similar in appearance to audio editing applications.

![audiowaveform](https://github.com/bbc/audiowaveform/blob/master/doc/example.png)

본 이미지를 이용하면 음악 파일의 파형 데이터를 .dat 파일이나 .json 파일로 만드는 등 **audiowaveform**이 제공하는 기능들을 사용할 수 있습니다. 

## Installed Libraries

* nodejs:20-alpine
* ffmpeg
* [audiowavefrom](https://github.com/bbc/audiowaveform)
