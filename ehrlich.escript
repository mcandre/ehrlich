#!/usr/bin/env escript

-module(hello).
-author("andrew.pennebaker@gmail.com").
-mode(compile).
-export([main/1, resurrect/1]).
-import(erl_tidy).

resurrect([]) -> ok;
resurrect([File|Files]) ->
	erl_tidy:dir(File, [{verbose, true}, {regexp, ".*\\.(erl|escript)$"}]),
	resurrect(Files).

usage() -> io:format("Usage: ~s [dir...]~n", [?FILE]).

main([]) -> usage();
main(Args) -> resurrect(Args).