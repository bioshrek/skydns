# SkyDNS: build
#
# docker build -t="bioshrek/skydns" .

FROM golang:1.3.3
MAINTAINER Huan Wang <shrekwang1@gmail.com>

RUN mkdir -p $GOPATH/src/github.com/skynetservices/skydns
WORKDIR $GOPATH/src/github.com/skynetservices/skydns
RUN go get github.com/skynetservices/skydns
RUN go build -v

VOLUME /skydns-binaries
