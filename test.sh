#/bin/bash
set -v
cd $GOPATH/src/$PACKAGE
govendor test +local
