def factorial(n)
 result = 1
 value = 1..n
  for i in value
    result *= i
  end
 return result
end
puts factorial(5)