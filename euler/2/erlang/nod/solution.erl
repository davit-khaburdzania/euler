-module(solution).
-export([sum/1]).

sum(N) when N > 2 ->
  fibonacciSum(1, 2, 2, N).


fibonacciSum(_, _, Sum, Max) when Sum > Max ->
  Sum;

fibonacciSum(F1, F2, Sum, Max)->
  FN = F1 + F2,

  if
    FN rem 2 == 0 -> fibonacciSum(F2, FN, Sum + FN, Max);
    true          -> fibonacciSum(F2, FN, Sum, Max)
  end.
