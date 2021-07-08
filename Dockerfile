FROM node:12-alpine

# --no-cache: download package index on-the-fly, no need to cleanup afterwards
# --virtual: bundle packages, remove whole bundle at once, when done

# Installing audiowaveform
RUN apk add \
    git \
    make \
    cmake \
    gcc \
    g++ \
    libmad-dev \
    libid3tag-dev \
    libsndfile-dev \
    boost-program_options \
    gd-dev \
    boost-dev \
    libgd \
    libpng-dev \
    zlib-dev \
    zlib-static \
    libpng-static \
    boost-static \
    autoconf \
    automake \
    libtool \
    gettext

RUN apk add --update ffmpeg

RUN wget https://github.com/xiph/flac/archive/1.3.3.tar.gz \
    && tar xzf 1.3.3.tar.gz \
    && cd flac-1.3.3 \
    && ./autogen.sh \
    && ./configure --enable-shared=no \
    && make \
    && make install

RUN git clone https://github.com/bbc/audiowaveform.git \
    && cd audiowaveform \
    && wget https://github.com/google/googletest/archive/release-1.11.0.tar.gz \
    && tar xzf release-1.11.0.tar.gz \
    && ln -s googletest-release-1.11.0 googletest \
    && mkdir build \
    && cd build \
    && cmake .. \
    && make \
    && make install \
    && audiowaveform --help

RUN git clone https://github.com/beschulz/wav2json.git \
    && cd wav2json/build/ \
    && make all \
    && mv ../bin/Linux/wav2json /usr/bin/ \
    && wav2json --help 
