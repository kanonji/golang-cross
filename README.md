# Golang compiler for Windows using MinGW Docker Image

golang-crossから動かなくなってたmac OSX部分を削除して、Windows向けビルドだけ出来る形にしたものです。
なのでCross Compilerではなくなってますが、一応WindowsとLinuxのクロスコンパイルは出来るかも。

## Usage

```
$ make build #tagged latest and 1.19(default value in Makefile)

$ make build VERSION=1.19 #tagged latest and 1.19

$ make build-version VERSION=1.19 #tagged 1.19
```
VERSION is Golang version.

> # Golang Cross Compile Docker Image
> 
> This repo contains a Dockerfile for building an image which is used to cross
> compile golang. It includes the MinGW compiler for windows, and an OSX SDK.
> 
> This image is available from https://hub.docker.com/r/dockercore/golang-cross
> and is used to build https://github.com/docker/cli.
