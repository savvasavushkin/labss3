require 'minitest/autorun'
require_relative 'main.rb'

# Test class
class Test < MiniTest::Unit::TestCase
def test_1
assert_nil(calculate(-5))
end

def test_2
assert((0.240226506959101 - calculate(1e-4)[:sum]).abs <= 1e-4)
end
end