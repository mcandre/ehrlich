all: lint

safety:
	safety check

bashate:
	@stank . | xargs bashate

checkbashisms:
	@stank . | xargs checkbashisms -n -p

shellcheck:
	@stank . | xargs shellcheck

funk:
	@funk .

lint: safety bashate checkbashisms shellcheck funk
