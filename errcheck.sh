#/bin/bash
for p in $(go list ./src/$PACKAGE/... | grep -v /vendor/); do errcheck $p >> errcheck.out; done
if cat errcheck.out | read; then { cat errcheck.out; (exit 1) }; fi
