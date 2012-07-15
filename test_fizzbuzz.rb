#! ruby
# coding: utf-8

require 'test/unit'

# rescue ArgumentError exec by test/unit
begin
  require './fizzbuzz'
rescue
end

class TC_FizzBuzz < Test::Unit::TestCase
  def setup
    @fb = FizzBuzz.new
    @result = ["1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz",
      "11","Fizz","13","14","FizzBuzz"]
  end
  def test_fizzbuzz_new
    assert_instance_of(FizzBuzz, @fb)
  end

  def test_map_fizzbuzz
    assert_equal(1, @fb.map_fizzbuzz(1).size)
    assert_equal(100, @fb.map_fizzbuzz(100).size)
  end

  def test_console_print
    ARGV[0] = "1"; assert_equal(["1"], @fb.console_print)
    ARGV[0] = "15"; assert_equal(@result, @fb.console_print)
  end

  def test_check_arg_int
    ARGV[0] = "1";    assert_equal(1, @fb.check_arg_int)
    ARGV[0] = "100";  assert_equal(100, @fb.check_arg_int)
    ARGV[0] = nil;    assert_raise(RuntimeError) { @fb.check_arg_int }
    ARGV[0] = "test"; assert_raise(ArgumentError) { @fb.check_arg_int }
    ARGV[0] = "0";    assert_raise(RuntimeError) { @fb.check_arg_int }
  end

  def test_fizzbuzz
    assert_equal("1", @fb.fizzbuzz(1))
    assert_equal("Fizz", @fb.fizzbuzz(3))
    assert_equal("Buzz", @fb.fizzbuzz(5))
    assert_equal("FizzBuzz", @fb.fizzbuzz(15))
  end
end
