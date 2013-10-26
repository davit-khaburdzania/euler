-module(sol).
-export([largestPrimeFactor/1]).
-import(mathx, [ceil/1, isPrime/1]).

largestPrimeFactor(N) ->
  findPrimeFactor(3, N).

findPrimeFactor(M, N) -> findPrimeFactor(M, N, 1).
findPrimeFactor(M, N, Best) when M > N -> Best;
findPrimeFactor(M, N, Best) ->
  case isPrime(M) =:= true andalso N rem M =:= 0 of
    true -> findPrimeFactor(M, N div M, M);
    _    -> findPrimeFactor(M + 1, N, Best)
  end.
