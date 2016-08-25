#/bin/bash
if gofmt -d $GOPATH/src/$PACKAGE | tee fmt.out | read; then { cat fmt.out; (exit 1) }; fi
