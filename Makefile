all: lint

shlint:
	-find bin -type f -o -name "*.bat" -prune -exec shlint {} \; | grep -v "^$$"; true

shellcheck:
	-find bin -type f -o -name "*.bat" -prune -exec shellcheck {} \;

checkbashisms:
	-find bin -type f -o -name "*.bat" -prune -exec checkbashisms -n -p {} \; | grep -v "^$$"; true

lint: shlint checkbashisms shellcheck
