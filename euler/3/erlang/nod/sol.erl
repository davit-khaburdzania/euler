-module(sol).
-export([isPrime/1, largestPrimeFactor/1]).
-import(mathx, [ceil/1]).

largestPrimeFactor(N) ->
  findPrimeFactor(3, N).


isPrime(2) -> true;
isPrime(N) when N =< 1 -> false;
isPrime(N) ->
  case length([ X || X <- lists:seq(2, mathx:ceil(math:sqrt(N))), N rem X == 0 ]) of
    0 -> true;
    _ -> false
  end.

findPrimeFactor(M, N) -> findPrimeFactor(M, N, 1).
findPrimeFactor(M, N, Best) when M > N -> Best;
findPrimeFactor(M, N, Best) ->
  case isPrime(M) =:= true andalso N rem M =:= 0 of
    true -> findPrimeFactor(M, N div M, M);
    _    -> findPrimeFactor(M + 1, N, Best)
  end.
