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
    return true
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
