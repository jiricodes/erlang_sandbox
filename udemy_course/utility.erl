-module(utility).
-export([factorial/1, reverse_list/1, convert_list_to_binary/1]).
-export([starts_with/2]).

factorial(0) -> 1;
factorial(N) -> N * factorial(N - 1).

reverse_list(List) ->
	reverse_list(List, []).

reverse_list([], ReversedAcc) -> ReversedAcc;
reverse_list([H|T], ReversedAcc) ->
	reverse_list(T, [H|ReversedAcc]).

convert_list_to_binary(List) ->
	convert_list_to_binary(List, <<>>).

convert_list_to_binary([], Acc) -> Acc;
convert_list_to_binary([H|T], Acc) ->
	convert_list_to_binary(T, <<Acc/binary, H>>).

starts_with(Portion, String) ->
	case string:left(String, length(Portion)) of
		Portion -> true;
		_ -> false
	end.