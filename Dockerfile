FROM golang:1.7-alpine
RUN apk add --update git
RUN go get -u github.com/stretchr/testify/... github.com/kardianos/govendor github.com/kisielk/errcheck github.com/golang/lint/golint
RUN export PATH=$PATH:$GOPATH/bin
COPY *.sh /root/
