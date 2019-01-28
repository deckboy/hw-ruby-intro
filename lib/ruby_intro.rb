# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  arr.reduce(0,:+)
end

def max_2_sum arr
  # YOUR CODE HERE
  return 0 if arr.empty?
  return arr[0] if arr.length==1
  arr.sort! {|a, b| b <=> a}
  arr[0]+arr[1]
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  return false if arr.empty?
  arr.combination(2).any?{|i,j| i+j==n}

end

# Part 2

def hello(name)
  # YOUR CODE HER
  "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s[0] =~ /[bcdfghjklmnpqrstvwxyz]/i
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  s =~ /\b[01]+\b/ && s.to_i(2)%4==0
end

# Part 3

class BookInStock
# YOUR CODE HERE
  #
  attr_accessor :isbn, :price
  def initialize(isbn,price)
    raise ArgumentError if isbn.empty? || price <=0
    #instance variable that can be read and write
    @isbn = isbn
    @price = price
  end

  def price_as_string
    "$%.2f" %@price
  end
end
