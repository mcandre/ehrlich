-module(ehrlich).
-author("andrew.pennebaker@gmail.com").
-mode(compile).
-export([main/1, resurrect/1]).
-import(erl_tidy, [dir/2]).

resurrect([]) -> ok;
resurrect([File|Files]) ->
	dir(File, [{verbose, true}, {regexp, ".*\\.(erl|escript)$"}, {recursive, false}]),
	resurrect(Files).

usage() -> io:format("Usage: ~s [dir...]~n", [?FILE]).

main([]) -> usage();
main(Args) -> resurrect(Args).