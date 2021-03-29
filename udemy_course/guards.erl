-module(guards).
-export([demo/1, is_hexval/1]).
-define(HEXVALS, [0,1,2,3,4,5,6,7,8,9,$a,$b, $c, $d, $e, $f]).

demo(X) when is_integer(X); is_float(X) ->
	number;
demo(X) when is_list(X), length(X) < 5 ->
	short_list;
demo(X) when is_list(X) ->
	list.

is_hexval(X) ->
	lists:member(X, ?HEXVALS).