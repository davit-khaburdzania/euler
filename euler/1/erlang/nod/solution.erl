-module(solution).
-export([sum/1]).

sum(Count) ->
  lists:sum([ N || N <- lists:seq(1, Count - 1), (N rem 3 == 0) or (N rem 5 == 0)]).
