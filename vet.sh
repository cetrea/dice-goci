#/bin/bash
set -v
for p in $(go list ./src/$PACKAGE/... | grep -v /vendor/); do go tool vet -v $GOPATH/src/$p >> vet.out; done
if cat vet.out | grep -v "Checking file" | read; then { cat vet.out; (exit 1) }; fi
