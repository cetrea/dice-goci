FROM golang:1.9
RUN go get -u github.com/mitchellh/gox github.com/stretchr/testify/... github.com/kardianos/govendor github.com/kisielk/errcheck github.com/golang/lint/golint github.com/go-swagger/go-swagger/cmd/swagger github.com/jteeuwen/go-bindata/... golang.org/x/tools/cmd/goimports
RUN export PATH=$PATH:$GOPATH/bin
COPY *.sh /root/
