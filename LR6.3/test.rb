
# frozen_string_literal: true

require 'minitest/autorun'
require 'minitest/assertions'
require_relative 'source'

# Class for setting any tests on functions
class Tests < MiniTest::Test
  def setup; end

  # :reek:UncommunicativeVariableName
  def test_differ_lambda
    assert_equal [0.88, 0.88, 0.87], Differ.new.differ_with (x) { Math.sin(x) }
    assert_equal [1.28, 1.30, 1.31], Differ.new.differ_with (x) { Math.tan(x) }
  end

  # :reek:UncommunicativeVariableName
  def test_differ_block
    assert_equal([0.88, 0.88, 0.87], Differ.new.differ_with { |x| Math.sin(x) })
    assert_equal([1.28, 1.30, 1.31], Differ.new.differ_with { |x| Math.tan(x) })
  end

  def teardown;
 end
end