ehrlich - Reviving dead code

REQUIREMENTS

 - Erlang
 - Agner
 - Triq

EXAMPLE

	$ ./ehrlich.escript .
	reading module `./example.erl'.
	./example.erl:7: expanding call to imported function `lists:map/2'.
	./example.erl:7: replacing call to `lists:map/2' with a list comprehension.
	./example.erl:7: changing application of fun-expression to local function call.
	./example.erl:3: removing unused imports:
		`lists:map/2'