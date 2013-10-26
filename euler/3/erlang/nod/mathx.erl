-module(mathx).
-export([floor/1, ceil/1, isPrime/1]).

isPrime(2) -> true;
isPrime(N) when N =< 1 -> false;
isPrime(N) ->
  case length([ X || X <- lists:seq(2, mathx:ceil(math:sqrt(N))), N rem X == 0 ]) of
    0 -> true;
    _ -> false
  end.

floor(X) ->
  T = erlang:trunc(X),
  case (X - T) of
    Neg when Neg < 0 -> T - 1;
    Pos when Pos > 0 -> T;
    _ -> T
  end.

ceil(X) ->
  T = erlang:trunc(X),
  case (X - T) of
    Neg when Neg < 0 -> T;
    Pos when Pos > 0 -> T + 1;
    _ -> T
  end.
