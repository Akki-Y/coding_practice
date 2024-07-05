# a series of numbers in which each number ( Fibonacci number ) is the sum of the two preceding numbers. The simplest is the series 1, 1, 2, 3, 5, 8, etc.

# Iterative method

def fibonacci(n)
  return n if n <= 1

  x, y = 0, 1
  (n-1).times do
    x, y = y, x+y
  end
 return y
end

puts fibonacci(9) #34


# recusive method

def fibonacci(n)
  return n if n<=1
  fibonacci(n-1) + fibonacci(n-2)
end
 
puts fibonacci(8) #21
