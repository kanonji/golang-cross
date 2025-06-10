.PHONY: build build-version

# make build VERSION=1.24
build: VERSION?=1.24
build:
	docker build . --build-arg GO_VERSION=$(VERSION) -t kanonji/golang-cross:latest -t kanonji/golang-cross:$(VERSION)

# make build-version VERSION=1.24
build-version: VERSION?=1.24
build-version:
	docker build . --build-arg GO_VERSION=$(VERSION) -t kanonji/golang-cross:$(VERSION)
