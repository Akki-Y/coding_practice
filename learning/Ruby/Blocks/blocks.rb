# enclosed with {}

[0, 2, 4].each { |n| puts n }

# Code using do-end statement :

[1, 2, 3, 'A', 'B','C'].each do |i|
  puts i 
end 

# the block has an argument n and puts n can be described as the body of our block.
# The array is iterated one time because of the each loop and displays the given input.

# Code using {} braces

[1, 2, 3, 'A', 'B', 'C'].each {
  |i| puts i   # i * 2
}

# the argument of block asks to display the n + 2th result of each array element.

# yield statement :

# Block Using Yield Statment :

def yield_block

  puts "method 1"
  yield 

  puts "method 2"
  yield

end
yield_block {
  puts "This is yield statement"
}

# The above program includes a block named yield_block that displays two methods and calls the block outside the loop.