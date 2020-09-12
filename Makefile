all: lint

safety:
	safety check

bashate:
	@stank . | xargs bashate

checkbashisms:
	@stank . | xargs checkbashisms -n -p

shellcheck:
	@stank -exInterp zsh . | grep -v node_modules | xargs shellcheck

funk:
	@funk .

lint: safety bashate checkbashisms shellcheck funk
