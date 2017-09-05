# ehrlich - Reviving dead code

# HOMEPAGE

http://www.yellosoft.us/ehrlich

# ABOUT

Ehrlich is a small command line wrapper around the [erl\_tidy](http://www.erlang.org/doc/man/erl_tidy.html) library. Ehrlich scans directories, reading .erl files and generating more idiomatic code.

# INSTALLATION

Add the ehrlich directory to `PATH`.

# EXAMPLE

```
$ cd src/
$ ./bin/ehrlich ehrlich/
reading module `./ehrlich/example.erl'.
./ehrlich/example.erl:7: expanding call to imported function `lists:map/2'.
./ehrlich/example.erl:7: replacing call to `lists:map/2' with a list comprehension.
./ehrlich/example.erl:7: changing application of fun-expression to local function call.
./ehrlich/example.erl:3: removing unused imports:
    `lists:map/2'
````

# REQUIREMENTS

* [Erlang](http://www.erlang.org)

## Optional

* [stank](https://github.com/mcandre/stank) (e.g., `go get github.com/mcandre/stank/...`)
