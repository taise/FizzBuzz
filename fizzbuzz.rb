#! ruby
# coding: utf-8

class FizzBuzz
  def countup(num)
    num.times {|cnt|
      puts matching_fizzbuzz(cnt + 1)
    }
  end

  def matching_fizzbuzz(num)
    if (0 == num % 3) && (0 == num % 5)
      match = "FizzBuzz"
    elsif 0 == num % 3
      match = "Fizz"
    elsif 0 == num % 5
      match = "Buzz"
    else
      num.to_s
    end
  end
end
