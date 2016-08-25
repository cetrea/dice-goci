#/bin/bash
set -v
cd src/$PACKAGE
echo 'mode: set' > profile.cov 
for pkg in `ls`; do go test -coverprofile=profile_tmp.cov ./$pkg || true; tail -n +2 profile_tmp.cov >> profile.cov || true; done
go tool cover -html=profile.cov -o=$CI_PROJECT_DIR/coverage.html
