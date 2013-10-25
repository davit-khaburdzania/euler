fib1, fib2, sum, result = 1, 2, 0, 2

while sum <= 4000000 do
  result += sum if sum.even?
  sum = fib1 + fib2
  fib1 = fib2
  fib2 = sum
end

puts result