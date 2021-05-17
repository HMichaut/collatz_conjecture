# Importing the unit test library
require "test/unit/assertions"
include Test::Unit::Assertions

# Number -> Boolean
# Consumes a Number and returns true if it is powwible to get back to one by:
# -if n is 1, stop
# -if n is even, repeat the process on n/2
# -if n is odd repeat this process on 3n + 1
def collatz(num)
  case
  when num == 1
    true
  when num.even?
    collatz(num / 2)
  when num.odd?
    collatz(3 * num + 1)
  end
end

# Unit tests
(1..100).each do |num|
  assert_equal collatz(num), true
end

# Number -> Number
# Consumes a Number and returns the number of iterations to go back to 1 by:
# -if n is 1, stop
# -if n is even, repeat the process on n/2
# -if n is odd repeat this process on 3n + 1

def collatz_count(num)
  case
  when num == 1
    0
  when num.even?
    1 + collatz_count(num / 2)
  when num.odd?
    1 + collatz_count(3 * num + 1)
  end
end

# Unit tests
(1..100).each do |num|
  assert_equal collatz(num), true
end

assert_equal collatz_count(1), 0
assert_equal collatz_count(2), 1
assert_equal collatz_count(3), 7
assert_equal collatz_count(4), 2
assert_equal collatz_count(5), 5
assert_equal collatz_count(6), 8
assert_equal collatz_count(7), 16
assert_equal collatz_count(8), 3
assert_equal collatz_count(15), 17
assert_equal collatz_count(27), 111
assert_equal collatz_count(50), 24
