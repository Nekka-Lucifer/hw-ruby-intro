# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  arr.inject(0,:+)
end

def max_2_sum arr
  sum(arr.max(2))
end

def sum_to_n? arr, n
  return false if arr.length < 2
  max_2_sum(arr) >= n
end

# Part 2

def hello(name)
  "Hello, #{name}"
end

def starts_with_consonant? s
  s =~ /^[^aeiou\W]/i
end

def binary_multiple_of_4? s
  s =~ /^[01]*0?0$/
end

# Part 3

class BookInStock
  attr_accessor :isbn, :price
  def initialize isbn, price
    raise ArgumentError if isbn == '' or price.to_f <= 0
    @isbn = isbn
    @price = price
  end
  def price_as_string
    "$%.2f" % @price
  end

end
