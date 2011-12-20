# ehrlich - Reviving dead code

## HOMEPAGE

[http://www.yellosoft.us/ehrlich](http://www.yellosoft.us/ehrlich)

## ABOUT

Ehrlich is a small command line wrapper around the [erl\_tidy](http://www.erlang.org/doc/man/erl_tidy.html) library. Ehrlich scans directories, reading .erl files and generating more idiomatic code.

## WARNINGS

Ehrlich will save the new code over the old code! Backup files are created just in case.

Ehrlich will do this recursively over every subdirectory of the current one.

## INSTALLATION

### Mac OS X, Linux, Unix

Copy the *contents* of `ehrlich.sh` to your shell configuration file: `~/.profile`, `~/.bashrc`, etc.

### Windows

Copy `ehrlich.bat` to a directory in your `PATH`, e.g. `C:\Windows\System32`.

## EXAMPLE

	$ ehrlich 
	reading module `./example.erl'.
	./example.erl:7: expanding call to imported function `lists:map/2'.
	./example.erl:7: replacing call to `lists:map/2' with a list comprehension.
	./example.erl:7: changing application of fun-expression to local function call.
	./example.erl:3: removing unused imports:
		`lists:map/2'
	made backup of file `./example.erl'.
	writing to file `./example.erl'.