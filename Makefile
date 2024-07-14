DESTDIR?=

ifeq ($(DETECTED_OS),Windows)
	BINARY_EXT=.exe
endif

GOPKG=github.com/thedrunkencoder/DockerCreator

all: build

.PHONY: build
build:
	go build -o $(or $(DESTDIR),./bin/build/docker-creator${BINARY_EXT}) -ldflags="${LDFLAGS}" ./cli

.PHONY: clean
clean:
	rm -rvf $(or $(DESTDIR),./bin)
