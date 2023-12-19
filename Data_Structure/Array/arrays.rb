# Step 1 : Creating an array 

array = [10, 20, 30]

# Step 2 : Accessing elements in an array 

array = [1, 2, 3]
puts array[0]
puts array[2]   # 1 3

# Step 3 : Adding elements to an array

array = [11, 22, 33]
array << 44
puts array     # 11 22 33 44 

array.push(55)
puts array     # 11 22 33 44 55

array.unshift(0)
puts array          # 0 11 22 33 44 55

# Step 4 : Removing elements from an array 

arr = [2, 4, 6, 8]
arr.pop
puts arr  # 2 4 6

arr.shift
puts arr  # 4 6

# Step 5 : Array Methods 

array = [1, 3, 5, 7]
puts array.length
puts array.reverse
puts array.sort
puts array.include?(7)   # true