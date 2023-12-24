build: .PHONY
	cd test && make build

test: .PHONY
	cd test && make test

_test: .PHONY
	cd test && make _test

clean: .PHONY
	cd test && make clean

.PHONY:
