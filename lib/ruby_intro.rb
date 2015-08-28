# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)

    sum = 0

    arr.each do |x|
        sum += x
    end

    return sum

end

def max_2_sum arr

  return 0 unless arr.any?

  arr.sort!{ |y,x| x <=>y}

  return arr[0] + arr[1] if arr.size > 1
  return arr[0]
end

def sum_to_n?(arr, n)

    return false unless arr.any?

    0.upto(arr.size-2) do |i|

        index = i +1

        index.upto(arr.size-1) do |j|
            return true if arr[i]+arr[j] == n
        end
    end

    return false

end

# Part 2

def hello(name)
    return "Hello, #{name}"
end

def starts_with_consonant? s
  
    return false unless s.is_a? String
    return false unless s.size > 0

    letter = s[0]

    return false if letter =~ /[AaEeIiOoUu\W]/

    return true

end

def binary_multiple_of_4? s
    return false if s =~ /[^0-1]/ || s.size == 0

    bin = s.to_i(10)
    return true if (bin % 4) == 0 
end

# Part 3

class BookInStock

    attr_accessor :isbn, :price

    def initialize(isbn, price)
        
        raise ArgumentError if isbn.size == 0
        raise ArgumentError if price <= 0

        @isbn = isbn
        @price = price

    end

    def price_as_string()
        return "$%.2f" % @price
    end

end
