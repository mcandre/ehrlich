all: lint

bashate:
	@stank . | xargs bashate

shlint:
	@stank . | xargs shlint

checkbashisms:
	@stank . | xargs checkbashisms -n -p

shellcheck:
	@stank . | xargs shellcheck

funk:
	@funk .

lint: bashate shlint checkbashisms shellcheck funk
