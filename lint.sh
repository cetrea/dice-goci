#/bin/bash
set -v
for p in $(go list ./src/$PACKAGE/... | grep -v /vendor/); do golint $p >> lint.out; done
if cat lint.out | read; then { cat lint.out; (exit 1) }; fi
