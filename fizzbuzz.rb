#! ruby
# coding: utf-8

class FizzBuzz
  def map_fizzbuzz(max)
    ary = (1..max).map {|n| fizzbuzz(n) }
  end

  def console_print
    begin
      max = check_arg_int
      ary = map_fizzbuzz(max)
      ary.each {|i| puts i }
    rescue
      raise 
    end
  end

  def fizzbuzz(num)
    case
    when num%5 == 0 && num%3 == 0; "FizzBuzz"
    when num%3 == 0;               "Fizz"
    when num%5 == 0;               "Buzz"
    else num.to_s
    end
  end

  def check_arg_int
    if ARGV[0].nil? || ARGV[0] == "0"
      raise "need an argument of integer"
    else
      Integer(ARGV[0])
    end
  end
end
FizzBuzz.new.console_print
