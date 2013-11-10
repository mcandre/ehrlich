checkbashisms:
	-checkbashisms ehrlich

shellcheck:
	-shellcheck ehrlich

lint: checkbashisms shellcheck
