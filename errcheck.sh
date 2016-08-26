#/bin/bash
set -v
for p in $(go list $PACKAGE/... | grep -v /vendor/); do errcheck $p >> errcheck.out; done
if cat errcheck.out | read; then { cat errcheck.out; (exit 1) }; fi
