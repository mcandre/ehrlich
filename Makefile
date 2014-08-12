all: lint

shlint:
	-shlint bin/

shellcheck:
	-shellcheck bin/*

checkbashisms:
	-checkbashisms -n -p bin/*

lint: shlint checkbashisms shellcheck
