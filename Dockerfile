FROM golang:alpine
RUN apk install docker
RUN service docker start
RUN go get -u github.com/stretchr/testify/... github.com/kardianos/govendor github.com/kisielk/errcheck github.com/golang/lint/golint
RUN export PATH=$PATH:$GOPATH/bin
COPY *.sh /root/
