ehrlich - Reviving dead code

HOMEPAGE

http://www.yellosoft.us/ehrlich

ABOUT

Ehrlich scans directories (nonrecursively), reading .erl files and generating more idiomatic code.

WARNING

Ehrlich will save the new code over the old code! Backup files are created just in case.

EXAMPLE

	$ escript ehrlich.erl .
	reading module `./example.erl'.
	./example.erl:7: expanding call to imported function `lists:map/2'.
	./example.erl:7: replacing call to `lists:map/2' with a list comprehension.
	./example.erl:7: changing application of fun-expression to local function call.
	./example.erl:3: removing unused imports:
		`lists:map/2'
	made backup of file `./example.erl'.
	writing to file `./example.erl'.
	reading module `./ehrlich.erl'.
	made backup of file `./ehrlich.erl'.
	writing to file `./ehrlich.erl'.