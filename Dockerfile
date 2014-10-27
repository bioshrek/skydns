# SkyDNS: build
#

FROM golang/1.3.3-onbuild
MAINTAINER Huan Wang <shrekwang1@gmail.com>

RUN go get github.com/skynetservices/skydns
RUN cd $GOPATH/src/github.com/skynetservices/skydns
RUN go build -v

VOLUME /skydns-binaries
