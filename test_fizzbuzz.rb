#! ruby
# coding: utf-8

require 'test/unit'
require './fizzbuzz'

class TC_FizzBuzz < Test::Unit::TestCase
  def setup
    @fb = FizzBuzz.new
  end
  def test_fizzbuzz_new
    assert_instance_of(FizzBuzz, @fb)
  end

  def test_countup
    assert_equal(1, @fb.countup(1))
    assert_equal(100, @fb.countup(100))
  end

  def test_matching_fizzbuzz
    assert_equal("1", @fb.matching_fizzbuzz(1))
    assert_equal("Fizz", @fb.matching_fizzbuzz(3))
    assert_equal("4", @fb.matching_fizzbuzz(4))
    assert_equal("Buzz", @fb.matching_fizzbuzz(5))
    assert_equal("Fizz", @fb.matching_fizzbuzz(6))
    assert_equal("Buzz", @fb.matching_fizzbuzz(10))
    assert_equal("FizzBuzz", @fb.matching_fizzbuzz(15))
  end
end

