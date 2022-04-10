FROM alpine:3.15.4
LABEL maintainer="Ivo Woltring - @ivonet"

ARG VERSION=1.0

LABEL org.label-schema.name="Alpine development image" \
    org.label-schema.url="https://ivonet.nl/" \
    org.label-schema.vcs-url="https://github.com/ivonet/docker-alpine-dev" \
    org.label-schema.version=$VERSION \
    org.label-schema.schema-version="1.0" \
    maintainer="Ivonet - @ivonet"

ENV JAVA_HOME="/usr"

RUN echo "http://dl-cdn.alpinelinux.org/alpine/v3.9/community" >> /etc/apk/repositories; \
    echo "http://dl-cdn.alpinelinux.org/alpine/v3.9/main" >> /etc/apk/repositories; \
    echo "http://dl-cdn.alpinelinux.org/alpine/edge/community" >> /etc/apk/repositories; \
    echo "http://dl-cdn.alpinelinux.org/alpine/edge/testing" >> /etc/apk/repositories; \
    echo "http://dl-cdn.alpinelinux.org/alpine/edge/main" >> /etc/apk/repositories; \
    apk update \
 && apk upgrade \
 && apk add --no-cache --update \
        alsa-lib \
        bzip2 \
        expat \
        fdk-aac \
        lame \
        libbz2 \
        libdrm \
        libffi \
        libjpeg-turbo \
        libtheora \
        libogg \
        libpciaccess \
        librtmp \
        libstdc++ \
        libtasn1 \
        libva \
        libvorbis \
        libvpx \
        mesa-gl \
        mesa-glapi \
        musl \
        opus \
        openjdk8-jre \
        p11-kit \
        sdl \
        x264-libs \
        x264 \
        x265 \
        jasper-dev \
        libass-dev \
        gnutls-dev \
        libwebp-dev \
        lame-dev \
        v4l-utils-libs \
        xvidcore \
 && apk add --no-cache --update --virtual=build-dependencies \
        alsa-lib-dev \
        bzip2-dev \
        coreutils \
        curl \
        fdk-aac-dev \
        freetype-dev \
        g++ \
        gcc \
        git \
        imlib2-dev \
        lcms2-dev \
        libgcc \
        libjpeg-turbo-dev \
        libtheora-dev \
        libogg-dev \
        libva-dev \
        libvorbis-dev \
        libvpx-dev \
        libx11 \
        libxau \
        libxcb \
        libxcb-dev \
        libxdamage \
        libxdmcp \
        libxext \
        libxfixes \
        libxfixes-dev \
        libxshmfence \
        libxxf86vm \
        make \
        musl-dev \
        nasm \
        nettle \
        opus-dev \
        pkgconf \
        pkgconf-dev \
        rtmpdump-dev \
        sdl-dev \
        tar \
        ttf-dejavu \
        v4l-utils-dev \
        x264-dev \
        x265-dev \
        xvidcore-dev \
        yasm-dev \
        zlib-dev

