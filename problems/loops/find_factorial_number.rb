def factorial(fact)
  result = 1
  fact_val = 1..fact
  for i in fact_val
    result *= i
  end
  return result 
end
test_number = 5
factorial_result = factorial(test_number)
puts "The factorial of #{test_number} is #{factorial_result}."