root_dir := $(dir $(abspath $(lastword $(MAKEFILE_LIST))))

export PATH := $(root_dir):$(PATH)

main: main.go
	GOOS=linux GOARCH=amd64 CC=zcc CGO_ENABLED=1 go build -a -ldflags "-s -w" main.go

# docker run --rm -it -v `pwd`:/ok ubuntu /ok/main
