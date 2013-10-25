-module(optimised).
-export([sum/1]).

maximumSum(N, M) ->
  N div M.

% Could be rewritten to SUM's but for functional programming I think it's same ))
list(Count, X)->
  [ N * X || N <- lists:seq(1, maximumSum(Count - 1, X)) ].

sum(Count) ->
  lists:sum(lists:umerge(list(Count, 3), list(Count, 5))).
