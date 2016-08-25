#/bin/bash
set -v
cd src/$PACKAGE
govendor test -p=1 -run=NONE -bench=. +local | tee $CI_PROJECT_DIR/benchmark.out
