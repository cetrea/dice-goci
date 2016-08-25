#/bin/bash
if find * ! -path *\vendor\* -type d -exec gofmt -d {} + | tee fmt.out | read; then { cat fmt.out; (exit 1) }; fi
