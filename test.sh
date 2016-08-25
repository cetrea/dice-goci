#/bin/bash
set -v
cd src/$PACKAGE
govendor test -p=1 +local
