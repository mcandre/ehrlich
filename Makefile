shlint:
	-shlint bin/

shellcheck:
	-shellcheck bin/**

lint: shlint shellcheck
