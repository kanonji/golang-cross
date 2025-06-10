ARG GO_VERSION=1.24

FROM golang:${GO_VERSION}-bookworm
ARG APT_MIRROR

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
