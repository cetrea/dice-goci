#/bin/bash
set -v
cd $GOPATH/src/$PACKAGE
govendor test -p=1 +local
