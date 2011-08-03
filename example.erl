-module(example).
-export([thing1/1, thing2/1]).
-import(lists, [map/2]).

thing1(X) -> ok.

thing2(Args) -> map(fun(Arg) -> io:format("~s~n", [Arg]) end, Args).