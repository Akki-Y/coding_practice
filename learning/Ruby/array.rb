# empty array
array =[]

# array with initial values
array =[1, 2, 3, 4, 5]

#find length of array
array.length
puts "length #{array}"

# accessing elements 
first = array[0]
last = array[-1]
puts first, last

#Modifying elements

array[0] = 10  #frst element
array << 6     # updated last element
puts "Updated first and last element #{array}"


#adding elements
array.push(6)
array << 7
puts "Added new element #{array}"

#Removing elements
array.pop
array.shift
puts "pop array removed last elememt #{array}"
puts "shift array removed frst elememt #{array}"

# Finding elements
array.include?(3) # => true

#iterating over elemnts
array.each do |element|
  puts element
end


# Creating a new array with modified elements (map)
new_array = array.map { |element| element * 2 } # => [4, 6, 8, 10, 12]

# Selecting elements based on a condition
selected_array = array.select { |element| element.even? } # => [2, 4, 6]

# Nested arrays 
nested_array = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

# Accessing nested elements
nested_array[1][2] # => 6 (second array, third element)
puts "nsted array #{nested_array}"

# Multi dmensional array 
# Creating a 2x3 matrix
matrix = Array.new(2) { Array.new(3) }
matrix[0][0] = 1
matrix[0][1] = 2
matrix[0][2] = 3
matrix[1][0] = 4
matrix[1][1] = 5
matrix[1][2] = 6

# Accessing elements in the matrix
matrix[1][2] # => 6
puts "2d #{matrix}"