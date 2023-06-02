ARG GO_VERSION=1.19

FROM golang:${GO_VERSION}-buster
ARG APT_MIRROR
RUN sed -ri "s/(httpredir|deb).debian.org/${APT_MIRROR:-deb.debian.org}/g" /etc/apt/sources.list \
 && sed -ri "s/(security).debian.org/${APT_MIRROR:-security.debian.org}/g" /etc/apt/sources.list

RUN apt-get update -qq && apt-get install -y -q --no-install-recommends \
    clang \
    file \
    llvm \
    patch \
    xz-utils \
 && rm -rf /var/lib/apt/lists/*

RUN apt-get update -qq && apt-get install -y -q --no-install-recommends \
    libltdl-dev \
    gcc-mingw-w64 \
    parallel \
 && rm -rf /var/lib/apt/lists/*
