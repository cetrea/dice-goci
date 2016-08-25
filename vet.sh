#/bin/bash
set -v
for p in $(go list $PACKAGE/... | grep -v /vendor/); do go vet $p >> vet.out; done
if cat vet.out | read; then { cat vet.out; (exit 1) }; fi
