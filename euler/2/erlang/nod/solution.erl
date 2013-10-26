-module(solution).
-export([sum/1]).

sum(N) when N > 2 ->
  fibonacciSum(1, 2, 2, N).


fibonacciSum(F1, F2, Sum, Max)->
  FN = F1 + F2,

  case FN > Max of
    true ->
      Sum;
    _ when FN rem 2 == 0 ->
      fibonacciSum(F2, FN, Sum + FN, Max);
    _ ->
      fibonacciSum(F2, FN, Sum, Max)
  end.

