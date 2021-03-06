# ehrlich - Reviving dead code

# HOMEPAGE

http://www.yellosoft.us/ehrlich

# ABOUT

Ehrlich is a small command line wrapper around the [erl\_tidy](http://www.erlang.org/doc/man/erl_tidy.html) library. Ehrlich scans directories, reading .erl files and generating more idiomatic code.

# INSTALLATION

Add the ehrlich directory to `PATH`.

# EXAMPLE

```console
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

* [Erlang OTP](http://www.erlang.org) 21+

## Optional

* [Python](https://www.python.org/) 3+
* [GHC Haskell](https://www.haskell.org/) 8+
* [Go](https://golang.org/) 1.9+
* [GNU make](https://www.gnu.org/software/make/)
* [checkbashisms](https://sourceforge.net/projects/checkbaskisms/)
